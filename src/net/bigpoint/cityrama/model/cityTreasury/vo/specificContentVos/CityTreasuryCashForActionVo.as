package net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos
{
   import net.bigpoint.cityrama.model.cityTreasury.vo.ICityTreasuryContentVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class CityTreasuryCashForActionVo implements ICityTreasuryContentVo
   {
      
      public function CityTreasuryCashForActionVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function get buttonLabel() : String
      {
         return LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.cfa.button.capital");
      }
      
      public function get headerLabel() : String
      {
         return LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.cfa.title.uppercase");
      }
      
      public function get mainText() : String
      {
         return LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.cfa.flavor");
      }
      
      public function get packGfx() : BriskDynaVo
      {
         return new BriskDynaVo("gui_popups_goodRebuyPopup","cashForAction_big");
      }
      
      public function get buttonTooltip() : String
      {
         return LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.cfa.button.tooltip");
      }
   }
}

