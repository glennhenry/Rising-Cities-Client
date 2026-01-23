package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigUpcomingEventDTO
   {
      
      private var _configEvent:ConfigEventDTO;
      
      private var _locaId:String;
      
      private var _gfxId:int;
      
      public function ConfigUpcomingEventDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super();
            if(!(_loc3_ && Boolean(param1)))
            {
               this._configEvent = new ConfigEventDTO(param1.e);
               if(!_loc3_)
               {
                  addr0049:
                  this._locaId = String(param1.l);
                  if(!_loc3_)
                  {
                     addr005c:
                     this._gfxId = int(param1.gId);
                  }
               }
               return;
            }
            §§goto(addr005c);
         }
         §§goto(addr0049);
      }
      
      public function get configEvent() : ConfigEventDTO
      {
         return this._configEvent;
      }
      
      public function get locaId() : String
      {
         return this._locaId;
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
   }
}

