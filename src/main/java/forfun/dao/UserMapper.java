package forfun.dao;

import java.util.List;
import java.util.Set;

import forfun.model.User;

public interface UserMapper {
	int deleteByPrimaryKey(String id);

	int insert(User record);

	int insertSelective(User record);

	User selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(User record);

	int updateByPrimaryKey(User record);

	User findByUsername(String username);

	Set<String> findRolesByUsername(String username);

	Set<String> findPermissionsByUsername(String username);
}