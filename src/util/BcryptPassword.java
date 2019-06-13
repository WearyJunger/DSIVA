package util;

/**
 * Author: Ian Gallagher <igallagher@securityinnovation.com>
 *
 * This code utilizes jBCrypt, which you need installed to use.
 * jBCrypt: http://www.mindrot.org/projects/jBCrypt/
 */
public class BcryptPassword {
	
	// Define the BCrypt workload to use when generating password hashes. 10-31 is a valid value.
		private int workload = 10;

		public  String hashPassword(String password_plaintext) {
			String salt = BCrypt.gensalt(workload);
			String hashed_password = BCrypt.hashpw(password_plaintext, salt);

			return(hashed_password);
		}
		
		public boolean checkPassword(String password_plaintext, String stored_hash) {
			boolean password_verified = false;

			if(null == stored_hash || !stored_hash.startsWith("$2a$"))
				throw new java.lang.IllegalArgumentException("Invalid hash provided for comparison");

			password_verified = BCrypt.checkpw(password_plaintext, stored_hash);

			return(password_verified);
		}
}
