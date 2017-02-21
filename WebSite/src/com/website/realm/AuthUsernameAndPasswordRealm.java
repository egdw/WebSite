package com.website.realm;

import javax.servlet.http.HttpSession;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.website.entites.WebsiteUser;
import com.website.service.WebSiteUserService;

public class AuthUsernameAndPasswordRealm extends AuthorizingRealm {
	@Autowired
	private WebSiteUserService service;
	@Autowired
	private HttpSession session;

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		//先放着
		return null;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken arg0) throws AuthenticationException {
		String principal = (String) arg0.getPrincipal();
		String credentials = new String((char[]) arg0.getCredentials());
		WebsiteUser user = service
				.loginByUsernamePasswd(principal, credentials);
		if (user != null) {
			session.setAttribute("currentUser", user);
			return new SimpleAuthenticationInfo(principal, credentials,
					getName());
		}
		return null;
	}

}
