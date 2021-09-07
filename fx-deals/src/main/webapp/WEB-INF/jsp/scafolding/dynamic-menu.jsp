<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var="menu"
           items="${menuList}">
   <!-- <li class="mega-menu-item mega-menu-item-type-custom mega-menu-item-object-custom mega-menu-item-has-children mega-align-bottom-left mega-menu-flyout mega-menu-item-123"
       id="mega-menu-item-123">
      <div class="dropdown"
           *ngIf="currentstatus.status"> -->

         <c:choose>
            <c:when test="${not empty menu.url}">
               <div class="Ac-hld sweep-to-right">
                  <div class="accordion-menu">
                     <a href="<c:url value='${menu.url}' />">${menu.title}</a>
                  </div>
               </div>
            </c:when>
            <c:otherwise>
                  <div class="Ac-hld sweep-to-right" >
                    <div class="accordion-menu">
                      <a>${menu.title}</a>
                    </div>
                    <div class="accordion accordion-close" onclick="myFunction(this)"
                         id="section2">
                      <span></span>
                    </div>
                    <div class="ac-bx"
                         style="display: none;">
                      <ol>
                           <c:forEach var="subMenu"
                                      items="${menu.subMenu}">
                                      <li><a href="<c:url value='${subMenu.url}' />">${subMenu.title}</a></li>
                           </c:forEach>
                      </ol>
                    </div>
                  </div>
            </c:otherwise>
         </c:choose>
      <!-- </div>
   </li> -->

</c:forEach>