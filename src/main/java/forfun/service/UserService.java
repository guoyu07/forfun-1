package forfun.service;


import java.util.Set;

import forfun.model.User;

public interface UserService {

	Set<String> findRoles(String username);

	Set<String> findPermissions(String username);

	User findByUsername(String username);



}
