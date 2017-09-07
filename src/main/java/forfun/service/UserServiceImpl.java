package forfun.service;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forfun.dao.UserMapper;
import forfun.model.User;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	
	public Set<String> findRoles(String username) {
		
		return userMapper.findRolesByUsername(username);
	}

	public Set<String> findPermissions(String username) {
		// TODO Auto-generated method stub
		return userMapper.findPermissionsByUsername(username);
	}

	public User findByUsername(String username) {
		
		return userMapper.findByUsername(username);
	}


}
