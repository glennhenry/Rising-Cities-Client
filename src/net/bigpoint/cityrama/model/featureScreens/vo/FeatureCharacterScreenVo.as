package net.bigpoint.cityrama.model.featureScreens.vo
{
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   
   public class FeatureCharacterScreenVo
   {
      
      private var _layerStyleName:String = "introduction";
      
      private var _title:String;
      
      private var _flavourText:String;
      
      private var _mainLayerTextHeader:String;
      
      private var _mainLayerText:String;
      
      private var _characterName:String;
      
      private var _buttonLabel:String;
      
      private var _buttonTooltip:String;
      
      private var _characterGfx:BriskDynaVo;
      
      private var _mainGfx:BriskDynaVo;
      
      private var _smallGfxLeft:BriskDynaVo;
      
      private var _smallGfxRight:BriskDynaVo;
      
      public function FeatureCharacterScreenVo()
      {
         super();
      }
      
      public function get isStoryScreen() : Boolean
      {
         return Boolean(this._smallGfxLeft) && Boolean(this._smallGfxRight);
      }
      
      public function get layerStyleName() : String
      {
         return this._layerStyleName;
      }
      
      public function set layerStyleName(param1:String) : void
      {
         this._layerStyleName = param1;
      }
      
      public function get title() : String
      {
         return this._title;
      }
      
      public function set title(param1:String) : void
      {
         this._title = param1;
      }
      
      public function get flavourText() : String
      {
         return this._flavourText;
      }
      
      public function set flavourText(param1:String) : void
      {
         this._flavourText = param1;
      }
      
      public function get mainLayerTextHeader() : String
      {
         return this._mainLayerTextHeader;
      }
      
      public function set mainLayerTextHeader(param1:String) : void
      {
         this._mainLayerTextHeader = param1;
      }
      
      public function get mainLayerText() : String
      {
         return this._mainLayerText;
      }
      
      public function set mainLayerText(param1:String) : void
      {
         this._mainLayerText = param1;
      }
      
      public function get characterName() : String
      {
         return this._characterName;
      }
      
      public function set characterName(param1:String) : void
      {
         this._characterName = param1;
      }
      
      public function get buttonLabel() : String
      {
         return this._buttonLabel;
      }
      
      public function set buttonLabel(param1:String) : void
      {
         this._buttonLabel = param1;
      }
      
      public function get buttonTooltip() : String
      {
         return this._buttonTooltip;
      }
      
      public function set buttonTooltip(param1:String) : void
      {
         this._buttonTooltip = param1;
      }
      
      public function get characterGfx() : BriskDynaVo
      {
         return this._characterGfx;
      }
      
      public function set characterGfx(param1:BriskDynaVo) : void
      {
         this._characterGfx = param1;
      }
      
      public function get mainGfx() : BriskDynaVo
      {
         return this._mainGfx;
      }
      
      public function set mainGfx(param1:BriskDynaVo) : void
      {
         this._mainGfx = param1;
      }
      
      public function get smallGfxLeft() : BriskDynaVo
      {
         return this._smallGfxLeft;
      }
      
      public function set smallGfxLeft(param1:BriskDynaVo) : void
      {
         this._smallGfxLeft = param1;
      }
      
      public function get smallGfxRight() : BriskDynaVo
      {
         return this._smallGfxRight;
      }
      
      public function set smallGfxRight(param1:BriskDynaVo) : void
      {
         this._smallGfxRight = param1;
      }
   }
}

