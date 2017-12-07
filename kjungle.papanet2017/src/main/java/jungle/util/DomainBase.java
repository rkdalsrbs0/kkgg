package jungle.util;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;


public abstract class DomainBase {

	@Target(ElementType.FIELD)
	@Retention(RetentionPolicy.RUNTIME)
	public static @interface Invisible {}
	
	public DomainBase() {

	}

	public static final <T extends DomainBase> T createFromMap(Class<T> clazz, Map<String, Object> map) {
		T obj = null;
		try {
			obj = clazz.newInstance();
			obj.setFromMap(map);
		} catch (Exception e) {
			//e.printStackTrace();
			System.out.println("createFromMap 오류 발생");
		}
		return obj;
	}

	public static final <T extends DomainBase> T createFromOtherDomain(Class<T> clazz, DomainBase fromObj) {
		T obj = null;
		try {
			obj = clazz.newInstance();

			Field[] declaredFields = fromObj.getClass().getDeclaredFields();
			for (Field field : declaredFields) {
				obj.setField(field.getName(), fromObj.getField(field.getName()));
			}
		} catch (Exception e) {
			//e.printStackTrace();
			System.out.println("createFromOtherDomain 오류 발생");
		}
		return obj;
	}

	public void setFromMap(Map<String, Object> map) {
		Field[] declaredFields = getClass().getDeclaredFields();
		try {
			for (Field field : declaredFields) {
				if (!map.containsKey(field.getName())) continue;
				
				setField(field.getName(), map.get(field.getName()));
			}
		} catch (IllegalArgumentException e) {
			//e.printStackTrace();
			System.out.println("setFromMap 오류 발생");
		}
	}

	public Map<String, Object> toMap() {
		return toMap(false);
	}
	
	public Map<String, Object> toMap(boolean all) {
		Map<String, Object> result = new HashMap<String, Object>();
		Field[] declaredFields = getClass().getDeclaredFields();
		try {
			for (Field field : declaredFields) {
				if (all || field.getAnnotation(Invisible.class) == null) {
					result.put(field.getName(), getField(field.getName()));
				}
			}
		} catch (IllegalArgumentException e) {
			//e.printStackTrace();
			System.out.println("toMap 오류 발생");
		}
		return result;
	}

	public void setFromJSON(String json) {
		DomainBase obj = getClass().cast(new JSONDeserializer<DomainBase>().deserialize(json, getClass()));

		Field[] declaredFields = getClass().getDeclaredFields();
		try {
			for (Field field : declaredFields) {
				setField(field.getName(), obj.getField(field.getName()));
			}
		} catch (IllegalArgumentException e) {
			//e.printStackTrace();
			System.out.println("setFromJSON 오류 발생");
		}
	}

	public String toJSON() {
		return toJSON(false);
	}
	
	public String toJSON(boolean all) {
		JSONSerializer jsonSerializer = new JSONSerializer().exclude("*.class");
		
		if (!all) {
			Field[] declaredFields = getClass().getDeclaredFields();
			try {
				for (Field field : declaredFields) {
					if (all || field.getAnnotation(Invisible.class) == null) continue;
					
					jsonSerializer.exclude(field.getName());
				}
			} catch (IllegalArgumentException e) {
				//e.printStackTrace();
				System.out.println("toJSON 오류 발생");
			}
		}

		return jsonSerializer.serialize(this);
	}

	public Object getField(String fieldName) {
		String methodName = "get" + fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
		try {
			Method method = getClass().getDeclaredMethod(methodName);
			return method.invoke(this);
		} catch (Exception e) {
			System.out.println(methodName + ", " + fieldName);
			//e.printStackTrace();
			System.out.println("getField 오류 발생");
		}
		return null;
	}

	public void setField(String fieldName, Object object) {
		String getMethodName = "get" + fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
		String setMethodName = "set" + fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
		try {
			Method getMethod = getClass().getDeclaredMethod(getMethodName);
			Method setMethod = getClass().getDeclaredMethod(setMethodName, getMethod.getReturnType());
			setMethod.invoke(this, object);
		} catch (Exception e) {
			//e.printStackTrace();
			System.out.println("setField 오류 발생");
		}
	}

	@Override
	public String toString() {
		return toString(false);
	}
	
	public String toString(boolean all) {
		StringBuilder sb = new StringBuilder();
		sb.append(getClass().getName());
		sb.append(" [");
		
		boolean first = true;
		Field[] declaredFields = getClass().getDeclaredFields();
		try {
			for (Field field : declaredFields) {
				if (all || field.getAnnotation(Invisible.class) == null) {
					if (first) {
						sb.append(field.getName() + "=" + getField(field.getName()));
						first = false;					
					} else {
						sb.append(", " + field.getName() + "=" + getField(field.getName()));					
					}
				}
			}
		} catch (IllegalArgumentException e) {
			//e.printStackTrace();
			System.out.println("toString 오류 발생");
		}
		
		sb.append("]");
		
		return sb.toString();
	}

}

