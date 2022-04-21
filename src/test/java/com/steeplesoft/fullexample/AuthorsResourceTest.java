package com.steeplesoft.fullexample;

import static io.restassured.RestAssured.when;

import javax.inject.Inject;

import io.quarkus.test.common.http.TestHTTPEndpoint;
import io.quarkus.test.junit.QuarkusTest;
import org.jooq.DSLContext;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

@QuarkusTest
@TestHTTPEndpoint(AuthorsResource.class)
public class AuthorsResourceTest {
    @Test
    public void testEndpoint() {
        when().get("/")
                .then()
                .log()
                .body()
                .statusCode(200);
    }

    @Inject
    DSLContext context;

    @Test
    public void testContextInjection() {
        Assertions.assertNotNull(context);
    }
}
