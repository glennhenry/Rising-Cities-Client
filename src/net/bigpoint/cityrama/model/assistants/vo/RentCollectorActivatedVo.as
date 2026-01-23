package net.bigpoint.cityrama.model.assistants.vo
{
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   
   public class RentCollectorActivatedVo
   {
      
      private var _stacked:Boolean;
      
      private var _packGfxId:Number;
      
      private var _timerVo:TimerBarComponentVo;
      
      public function RentCollectorActivatedVo()
      {
         super();
      }
      
      public function get stacked() : Boolean
      {
         return this._stacked;
      }
      
      public function get topText() : String
      {
         if(this.stacked)
         {
            return LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.stacked.flavour");
         }
         return LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.activated.flavour");
      }
      
      public function get bottomText() : String
      {
         if(this.stacked)
         {
            return LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.stacked.bottomText");
         }
         return LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.activated.bottomText");
      }
      
      public function get collectorIcon() : BriskDynaVo
      {
         return new BriskDynaVo("gui_popups_rentCollector","rentCollector_big_" + this._packGfxId);
      }
      
      public function set stacked(param1:Boolean) : void
      {
         this._stacked = param1;
      }
      
      public function set packGfxId(param1:Number) : void
      {
         this._packGfxId = param1;
      }
      
      public function get timerVo() : TimerBarComponentVo
      {
         return this._timerVo;
      }
      
      public function set timerVo(param1:TimerBarComponentVo) : void
      {
         this._timerVo = param1;
      }
   }
}

