package security;

import static org.junit.Assert.*;

import org.apache.commons.codec.binary.Base64;
import org.junit.Before;
import org.junit.Test;

import java.util.Map;

/**
 * RSAУ��
 * 
 * @author ����
 * @version 1.0
 */
public class RSACoderTest {

	/**
	 * ��Կ
	 */
	private byte[] publicKey;

	/**
	 * ˽Կ
	 */
	private byte[] privateKey;

	/**
	 * ��ʼ����Կ
	 * 
	 * @throws Exception
	 */
	@Before
	public void initKey() throws Exception {

		// ��ʼ����Կ
		Map<String, Object> keyMap = RSACoder.initKey();

		publicKey = RSACoder.getPublicKey(keyMap);
		privateKey = RSACoder.getPrivateKey(keyMap);

		String pu = Base64.encodeBase64String(publicKey);
		System.out.println(publicKey);
		System.out.println(Base64.decodeBase64(pu));
		System.out.println(Base64.encodeBase64String(Base64.decodeBase64(pu)));
		System.err.println("��Կ: \n" + Base64.encodeBase64String(publicKey));
		System.err.println("˽Կ�� \n" + Base64.encodeBase64String(privateKey));
	}

	/**
	 * У��
	 * 
	 * @throws Exception
	 */
	@Test
	public void test() throws Exception {

		System.err.println("\n---˽Կ���ܡ�����Կ����---");

		String inputStr1 = "RSA�����㷨";
		byte[] data1 = inputStr1.getBytes();
		System.err.println("ԭ��:\n" + inputStr1);

		// ����
		byte[] encodedData1 = RSACoder.encryptByPrivateKey(data1, privateKey);
		System.err.println("���ܺ�:\n" + Base64.encodeBase64String(encodedData1));

		// ����
		byte[] decodedData1 = RSACoder.decryptByPublicKey(encodedData1,
				publicKey);
		String outputStr1 = new String(decodedData1);
		System.err.println("���ܺ�:\n" + outputStr1);

		// У��
		assertEquals(inputStr1, outputStr1);

		System.err.println("\n---��Կ���ܡ���˽Կ����---");
		String inputStr2 = "RSA Encypt Algorithm";
		byte[] data2 = inputStr2.getBytes();
		System.err.println("ԭ��:\n" + inputStr2);

		// ����
		byte[] encodedData2 = RSACoder.encryptByPublicKey(data2, publicKey);
		System.err.println("���ܺ�:\n" + Base64.encodeBase64String(encodedData2));

		// ����
		byte[] decodedData2 = RSACoder.decryptByPrivateKey(encodedData2,
				privateKey);
		String outputStr2 = new String(decodedData2);
		System.err.println("���ܺ�: " + outputStr2);

		// У��
		assertEquals(inputStr2, outputStr2);
	}

}
