class AlertAdminMailer < ApplicationMailer
    def alert_admin(employee)
        @name = employee.fName + " " + employee.lName
        @email = employee.email
        @role = employee.role
        @experience = employee.experience
        mail(
            from: "jot.chawla.56.js@gmail.com",
            to: "jot.chawla.54.js@gmail.com", 
            subject: 'Alert: New employee added in your organisation'
        )
    end
end
