
class UserCtrl

    constructor: (@$log, @UserService) ->
        @$log.debug "constructing UserController"
        @users = []
        @getAllUsers()

    remove: (user) ->  alert("hier!")

    getAllUsers: () ->
        @$log.debug "getAllUsers()"

        @UserService.listUsers()
        .then(
            (data) =>
                @$log.debug "Promise returned #{data.length} Users"
                @users = data
            ,
            (error) =>
                @$log.error "Unable to get Users: #{error}"
            )

    deleteUser: (user) ->
        @$log.debug "deleteUser()"
        @UserService.deleteUser(user.firstName)
        .then(
          (data) =>
            @$log.debug "Promise returned #{data} User"
            @getAllUsers()
        ,
        (error) =>
          alert("It borked!")
          @$log.error "Unable to delete User: #{error}"
        )


angular.module('myApp').controller('UserCtrl', UserCtrl)