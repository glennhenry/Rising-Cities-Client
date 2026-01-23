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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super(param1);
            if(_loc2_ || Boolean(param1))
            {
               addr003f:
               useIcons = false;
            }
            return;
         }
         §§goto(addr003f);
      }
      
      public function get residentialNeeds() : Vector.<NeedVo>
      {
         return this._residentialNeeds;
      }
      
      public function set residentialNeeds(param1:Vector.<NeedVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._residentialNeeds = param1;
         }
      }
      
      public function get decorationVo() : DecorationVo
      {
         return this._decorationVo;
      }
      
      public function set decorationVo(param1:DecorationVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._decorationVo = param1;
            if(_loc2_ || _loc3_)
            {
               CityramaLogger.logger.debug("set decorationVo fired");
               if(_loc2_)
               {
                  addr0049:
                  dispatchEvent(new DecorationObjectVoEvent(DecorationObjectVoEvent.DATA_CHANGED));
               }
               return;
            }
         }
         §§goto(addr0049);
      }
   }
}

