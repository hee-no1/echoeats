package com.pofol.main.member.security;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;

public class SecurityUser implements UserDetails {

    private Collection<? extends GrantedAuthority> authorities;
    private String mem_id;  // principal
    private String mem_pwd;  // credential



    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    @Override
    public String getPassword() {
        return mem_pwd;
    }

    @Override
    public String getUsername() {
        return mem_id;
    }

    public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
        this.authorities = authorities;
    }

    public void setUsername(String mem_id) {
        this.mem_id = mem_id;
    }

    public void setPassword(String mem_pwd) {
        this.mem_pwd = mem_pwd;
    }



    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }


    @Override
    public String toString() {
        return "SecurityUser{" +
                "authorities=" + authorities +
                ", username='" + mem_id + '\'' +
                ", password='" + mem_pwd + '\'' +
//                ", name='" + mem_name + '\'' +
                '}';
    }
}
