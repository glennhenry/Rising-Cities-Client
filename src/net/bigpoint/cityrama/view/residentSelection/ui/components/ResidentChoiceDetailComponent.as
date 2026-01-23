package net.bigpoint.cityrama.view.residentSelection.ui.components
{
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.residentSelection.ResidentSelectionEvent;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentDetailVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.residentSelection.ui.skins.ResidentChoiceActiveSkin;
   import net.bigpoint.cityrama.view.residentSelection.ui.skins.ResidentChoiceInactiveSkin;
   import net.bigpoint.cityrama.view.residentSelection.ui.skins.ResidentChoiceUnknownSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class ResidentChoiceDetailComponent extends SkinnableComponent
   {
      
      private static var _skinParts:Object = {
         "infoText":false,
         "levelFeatureButton":false,
         "background":true,
         "actionButton":true,
         "residentType":true,
         "levelAmount":false,
         "currencyIcon":false,
         "needIcon":false,
         "needFeatureButton":false,
         "levelIcon":false,
         "levelGroup":false
      };
      
      public var background:BriskImageDynaLib;
      
      public var residentType:LocaLabel;
      
      public var actionButton:MultistateButton;
      
      public var currencyIcon:BriskImageDynaLib;
      
      public var levelAmount:LocaLabel;
      
      public var infoText:LocaLabel;
      
      public var levelFeatureButton:DynamicImageButton;
      
      public var needFeatureButton:DynamicImageButton;
      
      public var needIcon:BriskImageDynaLib;
      
      public var levelIcon:BriskImageDynaLib;
      
      public var levelGroup:HGroup;
      
      private var _data:ResidentDetailVo;
      
      private var _isDirty:Boolean;
      
      public function ResidentChoiceDetailComponent()
      {
         super();
      }
      
      public function set data(param1:ResidentDetailVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            if(this._data.locked)
            {
               setStyle("skinClass",ResidentChoiceUnknownSkin);
            }
            else if(this._data.movePossible)
            {
               setStyle("skinClass",ResidentChoiceActiveSkin);
            }
            else
            {
               setStyle("skinClass",ResidentChoiceInactiveSkin);
            }
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.actionButton.label = this._data.buttonText;
            this.background.dynaLibName = this._data.cardBGImage.dynaLibName;
            this.background.dynaBmpSourceName = this._data.cardBGImage.dynaBmpName;
            this.residentType.text = this._data.residentName;
            this.infoText.text = this._data.residentInfoText;
            if(!this._data.locked)
            {
               this.levelAmount.text = String(this._data.buildingLevel);
               this.currencyIcon.dynaBmpSourceName = this._data.currencyImage.dynaBmpName;
               this.currencyIcon.dynaLibName = this._data.currencyImage.dynaLibName;
               this.needFeatureButton.addEventListener(MouseEvent.CLICK,this.onNeedFeatureInfoClick);
               if(this._data.movePossible)
               {
                  this.actionButton.addEventListener(MouseEvent.CLICK,this.onActionButtonClicked);
               }
            }
            this.setTooltips();
         }
      }
      
      private function setTooltips() : void
      {
         var _loc1_:String = null;
         if(!this._data.locked)
         {
            this.needFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.residentSelection","rcl.tooltips.residentSelection.feature.needs");
            this.levelFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.residentSelection","rcl.tooltips.residentSelection.feature.upgrade");
            this.needIcon.toolTip = LocaUtils.getString("rcl.tooltips.residentSelection","rcl.tooltips.residentSelection.needs");
            this.currencyIcon.toolTip = LocaUtils.getString("rcl.tooltips.residentSelection","rcl.tooltips.residentSelection.currency",[this._data.currencyName]);
            this.levelIcon.toolTip = LocaUtils.getString("rcl.tooltips.residentSelection","rcl.tooltips.residentSelection.unlock",[this._data.buildingLevel]);
            this.levelGroup.toolTip = this.levelIcon.toolTip;
            switch(this._data.type)
            {
               case ServerResConst.RESOURCE_WORKERS:
                  _loc1_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.worker");
                  break;
               case ServerResConst.RESOURCE_RICHMEN:
                  _loc1_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.richmen");
                  break;
               case ServerResConst.RESOURCE_ACADEMICS:
                  _loc1_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.academics");
            }
            this.background.toolTip = _loc1_;
         }
      }
      
      private function onLevelFeatureClick(param1:MouseEvent) : void
      {
         dispatchEvent(new ResidentSelectionEvent(ResidentSelectionEvent.OPEN_FEATURE_UPGRADE,true,true));
      }
      
      private function onNeedFeatureInfoClick(param1:MouseEvent) : void
      {
         dispatchEvent(new ResidentSelectionEvent(ResidentSelectionEvent.OPEN_FEATURE_NEEDS,true,true));
      }
      
      private function onActionButtonClicked(param1:MouseEvent) : void
      {
         this.actionButton.enabled = false;
         var _loc2_:ResidentSelectionEvent = new ResidentSelectionEvent(ResidentSelectionEvent.RESIDENT_SELECTED,true,true);
         _loc2_.residentType = this._data.type;
         dispatchEvent(_loc2_);
      }
   }
}

