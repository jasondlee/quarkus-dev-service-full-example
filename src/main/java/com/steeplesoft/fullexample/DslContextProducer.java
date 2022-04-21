package com.steeplesoft.fullexample;

import javax.enterprise.context.RequestScoped;
import javax.enterprise.inject.Produces;
import javax.inject.Inject;
import javax.sql.DataSource;

import org.jooq.Configuration;
import org.jooq.DSLContext;
import org.jooq.conf.RenderNameCase;
import org.jooq.conf.RenderQuotedNames;
import org.jooq.conf.Settings;
import org.jooq.impl.DSL;
import org.jooq.impl.DefaultConfiguration;

public final class DslContextProducer {
    @Inject
    protected DataSource dataSource;

    @Produces
    @RequestScoped
    public DSLContext getDslContext() {
        try {
            return DSL.using(getConfiguration());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private Configuration getConfiguration() {
        return new DefaultConfiguration()
                .set(dataSource)
                .set(new Settings()
                        .withExecuteLogging(true)
                        .withRenderFormatted(true)
                        .withRenderCatalog(false)
                        .withRenderSchema(false)
                        .withMaxRows(Integer.MAX_VALUE)
                        .withRenderQuotedNames(RenderQuotedNames.EXPLICIT_DEFAULT_UNQUOTED)
                        .withRenderNameCase(RenderNameCase.LOWER_IF_UNQUOTED)
                );
    }
}
