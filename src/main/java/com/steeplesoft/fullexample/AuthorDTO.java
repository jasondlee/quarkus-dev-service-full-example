package com.steeplesoft.fullexample;

public class AuthorDTO {
    private Long id;
    private String firstName;
    private String lastName;

    public Long getId() {
        return id;
    }

    public AuthorDTO setId(Long id) {
        this.id = id;
        return this;
    }

    public String getFirstName() {
        return firstName;
    }

    public AuthorDTO setFirstName(String firstName) {
        this.firstName = firstName;
        return this;
    }

    public String getLastName() {
        return lastName;
    }

    public AuthorDTO setLastName(String lastName) {
        this.lastName = lastName;
        return this;
    }
}
