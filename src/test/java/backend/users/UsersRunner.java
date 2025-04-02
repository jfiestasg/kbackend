package backend.users;

import com.intuit.karate.junit5.Karate;

public class UsersRunner {
    @Karate.Test
    Karate gestusers() {
        return Karate.run("users").relativeTo(getClass());
    }

}
