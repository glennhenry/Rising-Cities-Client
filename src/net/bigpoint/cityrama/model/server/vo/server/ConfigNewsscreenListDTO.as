package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigNewsscreenListDTO
   {
      
      private var _configNewsscreenSlideList:Vector.<ConfigNewsscreenSlideDTO>;
      
      public function ConfigNewsscreenListDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Object = null;
         if(_loc6_ || _loc3_)
         {
            super();
            if(_loc6_)
            {
               this._configNewsscreenSlideList = new Vector.<ConfigNewsscreenSlideDTO>();
               if(_loc6_)
               {
                  §§goto(addr0055);
               }
            }
            §§goto(addr005a);
         }
         addr0055:
         if(param1)
         {
            for each(_loc2_ in param1.s)
            {
               if(!_loc5_)
               {
                  this._configNewsscreenSlideList.push(new ConfigNewsscreenSlideDTO(_loc2_));
               }
            }
            addr005a:
         }
      }
      
      public function get slideList() : Vector.<ConfigNewsscreenSlideDTO>
      {
         return this._configNewsscreenSlideList;
      }
   }
}

