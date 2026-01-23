package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class PlayfieldExpansionDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      public function PlayfieldExpansionDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super();
            if(!_loc3_)
            {
               this._id = param1.pid;
               if(!_loc3_)
               {
                  addr002e:
                  this._configId = param1.cpe;
               }
               §§goto(addr0037);
            }
            §§goto(addr002e);
         }
         addr0037:
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._id = param1;
         }
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._configId = param1;
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
   }
}

