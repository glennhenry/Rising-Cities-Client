package net.bigpoint.cityrama.model.server.vo.server
{
   public class PlayfieldItemPermissionDTO
   {
      
      private var _permissionConfigId:Number;
      
      private var _permissionsLeft:Number;
      
      private var _permissionsBought:int;
      
      private var _config:ConfigPlayfieldItemPermissionDTO;
      
      public function PlayfieldItemPermissionDTO(param1:Object, param2:ConfigPlayfieldItemPermissionDTO)
      {
         super();
         this._permissionConfigId = param1.cid;
         this._permissionsLeft = param1.l;
         this._permissionsBought = param1.b;
         this._config = param2;
      }
      
      public function get permissionConfigId() : Number
      {
         return this._permissionConfigId;
      }
      
      public function get permissionsLeft() : Number
      {
         return this._permissionsLeft;
      }
      
      public function get permissionsBought() : int
      {
         return this._permissionsBought;
      }
      
      public function get config() : ConfigPlayfieldItemPermissionDTO
      {
         return this._config;
      }
      
      public function set permissionsLeft(param1:Number) : void
      {
         this._permissionsLeft = param1;
      }
   }
}

