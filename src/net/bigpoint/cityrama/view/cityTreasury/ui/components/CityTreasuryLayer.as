package net.bigpoint.cityrama.view.cityTreasury.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import mx.collections.ArrayCollection;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.RandomUtilities;
   
   public class CityTreasuryLayer extends PaperPopupWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "backButton":false,
         "tabBar":false,
         "sideMenu":false,
         "titleDisplay":false
      };
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _treasuryTabData:ArrayCollection;
      
      private var _tabsDirty:Boolean;
      
      public function CityTreasuryLayer()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "cityTreasury";
         this.showBackButton = false;
         this.width = 775;
         this.height = 440;
         this.addEventListener("addedToStage",this.___CityTreasuryLayer_PaperPopupWindow1_addedToStage);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function addedToStageHandler(param1:Event) : void
      {
         TweenMax.to(this,1,{"glowFilter":{
            "color":14140033,
            "alpha":1,
            "blurX":32,
            "blurY":32,
            "strength":1.8
         }});
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._treasuryTabData) && this._tabsDirty)
         {
            this._tabsDirty = false;
            tabData = this._treasuryTabData;
         }
      }
      
      public function set treasuryTabData(param1:ArrayCollection) : void
      {
         if(!RandomUtilities.isEqual(param1,this._treasuryTabData))
         {
            this._treasuryTabData = param1;
            this._tabsDirty = true;
            invalidateProperties();
         }
      }
      
      public function ___CityTreasuryLayer_PaperPopupWindow1_addedToStage(param1:Event) : void
      {
         this.addedToStageHandler(param1);
      }
   }
}

