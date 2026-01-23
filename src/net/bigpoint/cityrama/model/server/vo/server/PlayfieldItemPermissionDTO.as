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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            super();
            if(!(_loc3_ && Boolean(param1)))
            {
               this._permissionConfigId = param1.cid;
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._permissionsLeft = param1.l;
                  if(_loc4_)
                  {
                     this._permissionsBought = param1.b;
                     if(_loc4_)
                     {
                        addr007e:
                        this._config = param2;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr007e);
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._permissionsLeft = param1;
         }
      }
   }
}

