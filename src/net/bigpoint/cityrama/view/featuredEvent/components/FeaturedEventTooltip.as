package net.bigpoint.cityrama.view.featuredEvent.components
{
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedEventSideMenuVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.featuredEvent.skins.FeaturedEventMultipleTooltipSkin;
   import net.bigpoint.cityrama.view.featuredEvent.skins.FeaturedEventSingleTooltipSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.List;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class FeaturedEventTooltip extends SkinnableComponent
   {
      
      private static var _skinParts:Object = {
         "infoText":false,
         "header":true,
         "progressTimer":false,
         "headerIcon":true,
         "multipleEventList":false
      };
      
      public var header:LocaLabel;
      
      public var headerIcon:BriskImageDynaLib;
      
      public var infoText:LocaLabel;
      
      public var progressTimer:TimerBarComponent;
      
      public var multipleEventList:List;
      
      private var _data:FeaturedEventSideMenuVo;
      
      private var _isDirty:Boolean;
      
      public function FeaturedEventTooltip()
      {
         super();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            if(this.header)
            {
               this.header.text = this._data.header;
            }
            if(this.headerIcon)
            {
               this.headerIcon.briskDynaVo = this._data.headerIcon;
            }
            if(this._data.wheelRewardsWaiting)
            {
               if(this.infoText)
               {
                  this.infoText.text = this._data.infoText;
               }
               if(this.progressTimer)
               {
                  this.progressTimer.includeInLayout = this.progressTimer.visible = false;
               }
            }
            else if(this._data.multipleEvents)
            {
               if(this.multipleEventList)
               {
                  this.multipleEventList.dataProvider = this._data.multipleEventListData;
               }
            }
            else
            {
               if(this.infoText)
               {
                  this.infoText.text = this._data.infoText;
               }
               if(this.progressTimer)
               {
                  this.progressTimer.includeInLayout = this.progressTimer.visible = true;
                  this.progressTimer.data = this._data.timerVo;
               }
            }
         }
      }
      
      public function set data(param1:FeaturedEventSideMenuVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            if(this._data.multipleEvents)
            {
               setStyle("skinClass",FeaturedEventMultipleTooltipSkin);
            }
            else
            {
               setStyle("skinClass",FeaturedEventSingleTooltipSkin);
            }
            invalidateProperties();
         }
      }
   }
}

