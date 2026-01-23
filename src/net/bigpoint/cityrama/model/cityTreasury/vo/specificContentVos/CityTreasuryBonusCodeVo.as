package net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos
{
   import net.bigpoint.cityrama.model.cityTreasury.vo.ICityTreasuryContentVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class CityTreasuryBonusCodeVo implements ICityTreasuryContentVo
   {
      
      private var _errorLabel:String = "";
      
      public function CityTreasuryBonusCodeVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public function get headerLabel() : String
      {
         return LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.bonuscode.title.uppercase");
      }
      
      public function get mainText() : String
      {
         return LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.bonuscode.flavor");
      }
      
      public function get buttonLabel() : String
      {
         return LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.bonuscode.button.capital");
      }
      
      public function get packGfx() : BriskDynaVo
      {
         return new BriskDynaVo("gui_popups_goodRebuyPopup","bonusCode_big");
      }
      
      public function get errorLabel() : String
      {
         return this._errorLabel;
      }
      
      public function set errorLabel(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._errorLabel = param1;
         }
      }
      
      public function get buttonTooltip() : String
      {
         return LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.bonuscode.button.tooltip");
      }
   }
}

