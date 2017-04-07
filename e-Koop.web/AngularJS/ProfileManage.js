angular.module('dashboard', ['ngMaterial', 'ngAnimate', 'ngMessages', ])
.controller('dashboardCtrl', function ($scope, $timeout) {
    $scope.PinAdd = true;
    $scope.SellerForm = null;
    $scope.loadingListData = false;
  
    $scope.CheckPin = function () {
      //  $scope.loadingListData = true;
        if ($scope.SellerForm.PinNo == null || $scope.SellerForm.PinNo == '') {
            $scope.loadingListData = true;
            $scope.PinAdd = true;
            $timeout(function () {
             $scope.loadingListData = false;
            }, 1000);
        } else {
            $scope.loadingListData = true;
            $timeout(function () {
                $scope.PinAdd = false;
                $scope.loadingListData = false; 
            }, 1000);
               
        } 
    }
   
})
