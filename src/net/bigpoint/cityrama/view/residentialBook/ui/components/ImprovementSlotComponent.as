package net.bigpoint.cityrama.view.residentialBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.model.residentialBook.vo.ImprovementSlotComponentVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.ImprovementSlotActiveSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.ImprovementSlotExpiredSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.ImprovementSlotFreeSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.ImprovementSlotLockedSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.ImprovementSlotPreviewSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.supportClasses.ButtonBase;
   
   public class ImprovementSlotComponent extends ButtonBase
   {
      
      public static const STATE_SLOT_LOCKED:String = "STATE_SLOT_LOCKED";
      
      public static const STATE_SLOT_FREE:String = "STATE_SLOT_FREE";
      
      public static const STATE_SLOT_ACTIVE:String = "STATE_SLOT_ACTIVE";
      
      public static const STATE_SLOT_EXPIRED:String = "STATE_SLOT_EXPIRED";
      
      public static const STATE_SLOT_PREVIEW:String = "STATE_SLOT_PREVIEW";
      
      public static const SLOT_CLICKED:String = "SLOT_CLICKED";
      
      public static const SLOT_OVER:String = "SLOT_OVER";
      
      public static const SLOT_OUT:String = "SLOT_OUT";
      
      private static var _skinParts:Object = {
         "improBg":false,
         "infoIcon":false,
         "progressBarGroup":false,
         "slimProgressBar":false,
         "iconDisplay":false,
         "improvementGfx":false,
         "improBadge":false,
         "slotTextLabel":false,
         "labelDisplay":false,
         "unlimitedGroup":false
      };
      
      private var _highlight:Boolean;
      
      public var slotTextLabel:LocaLabel;
      
      public var infoIcon:BriskImageDynaLib;
      
      public var improBg:BriskImageDynaLib;
      
      public var improvementGfx:BriskImageDynaLib;
      
      public var improBadge:BriskImageDynaLib;
      
      public var slimProgressBar:SlimProgressBarTimer;
      
      public var progressBarGroup:Group;
      
      public var unlimitedGroup:Group;
      
      private var _data:ImprovementSlotComponentVo;
      
      private var _isDirty:Boolean;
      
      public function ImprovementSlotComponent()
      {
         super();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.removeEventListener(MouseEvent.CLICK,this.handleSlotClicked);
            this.removeEventListener(MouseEvent.MOUSE_OVER,this.handleSlotOver);
            this.removeEventListener(MouseEvent.MOUSE_OUT,this.handleSlotOut);
            this.addListener();
            switch(this._data.currentState)
            {
               case STATE_SLOT_LOCKED:
                  if(this.slotTextLabel)
                  {
                     this.slotTextLabel.text = this._data.slotText;
                  }
                  this.removeEventListener(MouseEvent.CLICK,this.handleSlotClicked);
                  break;
               case STATE_SLOT_PREVIEW:
                  this.setImprovementData();
                  this.setProgressVisibility();
                  break;
               case STATE_SLOT_ACTIVE:
                  this.setImprovementData();
                  this.setProgressVisibility();
                  if(Boolean(this.slimProgressBar) && Boolean(this._data.progressVo))
                  {
                     this.slimProgressBar.data = this._data.progressVo;
                  }
                  break;
               case STATE_SLOT_EXPIRED:
                  this.setImprovementData();
            }
            if(this.highlight)
            {
               if(skin.currentState != "highlightOver")
               {
                  skin.setCurrentState("highlight");
               }
            }
         }
      }
      
      private function addListener() : void
      {
         this.addEventListener(MouseEvent.CLICK,this.handleSlotClicked);
         this.addEventListener(MouseEvent.MOUSE_OVER,this.handleSlotOver);
         this.addEventListener(MouseEvent.MOUSE_OUT,this.handleSlotOut);
      }
      
      private function setImprovementData() : void
      {
         if(this.improBg)
         {
            this.improBg.briskDynaVo = this._data.improvementBgData;
         }
         if(this.improBadge)
         {
            this.improBadge.briskDynaVo = this._data.improvementBadgeData;
         }
         if(this.improvementGfx)
         {
            this.improvementGfx.briskDynaVo = this._data.improvementGfx;
         }
      }
      
      private function setProgressVisibility() : void
      {
         if(this.progressBarGroup)
         {
            this.progressBarGroup.visible = this.progressBarGroup.includeInLayout = this._data.improvementVo.runtime != -1;
         }
         if(this.unlimitedGroup)
         {
            this.unlimitedGroup.visible = this.unlimitedGroup.includeInLayout = this._data.improvementVo.runtime == -1;
         }
      }
      
      private function handleSlotOut(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(SLOT_OUT,true));
      }
      
      private function handleSlotOver(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(SLOT_OVER,true));
      }
      
      private function handleSlotClicked(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(SLOT_CLICKED,true));
      }
      
      public function set data(param1:ImprovementSlotComponentVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            switch(this._data.currentState)
            {
               case STATE_SLOT_LOCKED:
                  setStyle("skinClass",ImprovementSlotLockedSkin);
                  break;
               case STATE_SLOT_FREE:
                  setStyle("skinClass",ImprovementSlotFreeSkin);
                  break;
               case STATE_SLOT_ACTIVE:
                  setStyle("skinClass",ImprovementSlotActiveSkin);
                  break;
               case STATE_SLOT_EXPIRED:
                  setStyle("skinClass",ImprovementSlotExpiredSkin);
                  break;
               case STATE_SLOT_PREVIEW:
                  setStyle("skinClass",ImprovementSlotPreviewSkin);
                  break;
               default:
                  setStyle("skinClass",ImprovementSlotFreeSkin);
            }
            invalidateProperties();
         }
      }
      
      public function set highlight(param1:Boolean) : void
      {
         this._highlight = param1;
         if(this._highlight)
         {
            skin.setCurrentState("highlight",true);
         }
         else
         {
            skin.setCurrentState("up",true);
         }
      }
      
      public function get currentSlotState() : String
      {
         return this._data.currentState;
      }
      
      public function get highlight() : Boolean
      {
         return this._highlight;
      }
      
      public function get data() : ImprovementSlotComponentVo
      {
         return this._data;
      }
   }
}

