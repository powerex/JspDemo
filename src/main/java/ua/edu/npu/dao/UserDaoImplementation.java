package ua.edu.npu.dao;

import ua.edu.npu.model.User;

import java.util.ArrayList;
import java.util.List;

public class UserDaoImplementation {

    private static List<User> users = new ArrayList<>();

    static {
        users.add(new User("Robert", 24));
        users.add(new User("Lilia", 20));
    }

    public static User getUserByID(int id) {
        return users.get(id - 1);
    }

    public static void addUser(User user) {
        users.add(user);
    }

    public static List<User> getAllUsers() {
        return users;
    }
}
