
package com.swk.interfce.jaxws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

/**
 * This class was generated by Apache CXF 3.1.4
 * Sat Dec 26 21:40:07 CST 2015
 * Generated source version: 3.1.4
 */

@XmlRootElement(name = "sayHi", namespace = "http://interfce.swk.com/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "sayHi", namespace = "http://interfce.swk.com/")

public class SayHi {

    @XmlElement(name = "arg0")
    private java.lang.String arg0;

    public java.lang.String getArg0() {
        return this.arg0;
    }

    public void setArg0(java.lang.String newArg0)  {
        this.arg0 = newArg0;
    }

}

