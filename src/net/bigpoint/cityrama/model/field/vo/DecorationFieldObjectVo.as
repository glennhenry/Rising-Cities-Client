package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.model.field.vo.event.DecorationObjectVoEvent;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.shop.NeedVo;
   import net.bigpoint.util.CityramaLogger;
   
   public class DecorationFieldObjectVo extends BillboardObjectVo
   {
      
      private var _residentialNeeds:Vector.<NeedVo>;
      
      private var _decorationVo:DecorationVo;
      
      public function DecorationFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         super(param1);
         useIcons = false;
      }
      
      public function get residentialNeeds() : Vector.<NeedVo>
      {
         return this._residentialNeeds;
      }
      
      public function set residentialNeeds(param1:Vector.<NeedVo>) : void
      {
         this._residentialNeeds = param1;
      }
      
      public function get decorationVo() : DecorationVo
      {
         return this._decorationVo;
      }
      
      public function set decorationVo(param1:DecorationVo) : void
      {
         this._decorationVo = param1;
         CityramaLogger.logger.debug("set decorationVo fired");
         dispatchEvent(new DecorationObjectVoEvent(DecorationObjectVoEvent.DATA_CHANGED));
      }
   }
}

