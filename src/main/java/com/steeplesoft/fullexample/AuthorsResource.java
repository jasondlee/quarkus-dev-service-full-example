package com.steeplesoft.fullexample;

import static com.steeplesoft.fullexample.jooq.tables.Authors.AUTHORS;

import java.util.List;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.jooq.DSLContext;

@Path("/authors")
public class AuthorsResource {
    @Inject
    DSLContext context;

    @GET
    public List<AuthorDTO> getAuthors() {
        return context.select()
                .from(AUTHORS)
                .fetchInto(AuthorDTO.class);
    }
}
