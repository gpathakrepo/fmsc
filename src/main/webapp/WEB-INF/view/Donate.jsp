<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/" method="post">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                Meals<span class="req">*</span>
              </label>
              <input type="text" required  />
            </div>
        
            <div class="field-wrap">
              <label>
                Gross Donation<span class="req">*</span>
              </label>
              <input type="text"required />
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Donor's Name<span>*</span>
            </label>
            <input type="text"required />
          </div>
          
          <div class="field-wrap">
            <label>
              Donor's Location<span class="req">*</span>
            </label>
            <input type="text" required />
          </div>
          
		   <div class="field-wrap">
            <label>
              comfirm Password<span class="req">*</span>
            </label>
            <input type="password"required  autocomplete="off"/>
          </div>
		  
		   
		  
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

</body>
</html>