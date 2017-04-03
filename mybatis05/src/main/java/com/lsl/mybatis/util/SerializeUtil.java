package com.lsl.mybatis.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class SerializeUtil {
	//序列化对象
  public static byte[] serialize(Object obj){
	  try {
		  ByteArrayOutputStream baos=new ByteArrayOutputStream();
		  ObjectOutputStream oos=new ObjectOutputStream(baos);
		  oos.writeObject(obj);
		  return baos.toByteArray();//对象转成字节
	} catch (IOException e) {
		e.printStackTrace();
	}
	  return null;
  }
  public static Object unserialize(byte[] bs){
	  if(bs==null){
		  return null;
	  }
	  try{
		  ByteArrayInputStream bais=new ByteArrayInputStream(bs);
		  ObjectInputStream ois=new ObjectInputStream(bais);
		  return ois.readObject();//字节--》对象
	  }catch(Exception e){
		  e.printStackTrace();
	  }
	  return null;
  }
}
