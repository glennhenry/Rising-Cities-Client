package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigNewsscreenListDTO
   {
      
      private var _configNewsscreenSlideList:Vector.<ConfigNewsscreenSlideDTO>;
      
      public function ConfigNewsscreenListDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super();
         this._configNewsscreenSlideList = new Vector.<ConfigNewsscreenSlideDTO>();
         if(param1)
         {
            for each(_loc2_ in param1.s)
            {
               this._configNewsscreenSlideList.push(new ConfigNewsscreenSlideDTO(_loc2_));
            }
         }
      }
      
      public function get slideList() : Vector.<ConfigNewsscreenSlideDTO>
      {
         return this._configNewsscreenSlideList;
      }
   }
}

