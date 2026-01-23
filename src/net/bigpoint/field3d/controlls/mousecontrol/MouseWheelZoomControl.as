package net.bigpoint.field3d.controlls.mousecontrol
{
   import as3isolib.display.IsoView;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.model.popup.PopupProxy;
   import net.bigpoint.cityrama.view.field.FieldViewPortMediator;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class MouseWheelZoomControl extends Proxy
   {
      
      private var _isoView:IsoView;
      
      private var _active:Boolean = false;
      
      private var _zoomSmoothTime:Number = 0.3;
      
      private var _mouseWheelMultiplier:Number = 100;
      
      private var _enableBetterPerformance:Boolean;
      
      private var _zoomStepArray:Array = [0.7,1];
      
      private var _currentZoomPointer:int = 1;
      
      private var _zoomValue:Number = 1;
      
      private var _background:Sprite;
      
      private var _defaultStageX:Number;
      
      private var _defaultStageY:Number;
      
      private var _optionsProxy:OptionsMenuProxy;
      
      private var _popUpProxy:PopupProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      public function MouseWheelZoomControl(param1:IsoView, param2:Sprite)
      {
         super();
         this._optionsProxy = facade.retrieveProxy(OptionsMenuProxy.NAME) as OptionsMenuProxy;
         this._popUpProxy = facade.retrieveProxy(PopupProxy.NAME) as PopupProxy;
         this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         this._background = param2;
         this._isoView = param1;
         this._defaultStageX = FieldViewPortMediator.FIELD_MIN_SIZE.width;
         this._defaultStageY = FieldViewPortMediator.FIELD_MIN_SIZE.height;
         this.active = true;
      }
      
      private function wheel(param1:Object) : void
      {
         if(param1.delta > 0)
         {
            this.zoomIn(true);
         }
         if(param1.delta < 0)
         {
            this.zoomOut(true);
         }
      }
      
      public function adjustField() : void
      {
         if(this._isoView.stage == null)
         {
            return;
         }
         var _loc1_:Number = this._isoView.stage.stageWidth * 0.5 / this._isoView.currentZoom;
         var _loc2_:Number = this._isoView.stage.stageHeight * 0.5 / this._isoView.currentZoom;
         var _loc3_:Number = HorizionSettingsVo.maxWidthMotionLimit(this._playfieldProxy.config.gfxId);
         var _loc4_:Number = HorizionSettingsVo.maxHeightMotionLimit(this._playfieldProxy.config.gfxId);
         var _loc5_:Number = HorizionSettingsVo.minPositionX(this._playfieldProxy.config.gfxId);
         var _loc6_:Number = HorizionSettingsVo.minPositionY(this._playfieldProxy.config.gfxId);
         if(this._isoView.currentX - _loc1_ < _loc5_)
         {
            this._isoView.panTo(_loc5_ + _loc1_,this._isoView.currentY);
         }
         if(this._isoView.currentX + _loc1_ > _loc5_ + _loc3_)
         {
            this._isoView.panTo(_loc5_ + _loc3_ - _loc1_,this._isoView.currentY);
         }
         if(this._isoView.currentY - _loc2_ < _loc6_)
         {
            this._isoView.panTo(this._isoView.currentX,_loc6_ + _loc2_);
         }
         if(this._isoView.currentY + _loc2_ > _loc6_ + _loc4_)
         {
            this._isoView.panTo(this._isoView.currentX,_loc6_ + _loc4_ - _loc2_);
         }
      }
      
      public function zoomIn(param1:Boolean = false) : void
      {
         if(!this._popUpProxy.isPopupOpen)
         {
            if(this._currentZoomPointer < this._zoomStepArray.length - 1)
            {
               ++this._currentZoomPointer;
               this._zoomValue = this._zoomStepArray[this._currentZoomPointer];
               if(this._isoView.currentZoom != this._zoomValue)
               {
                  this._isoView.currentZoom = this._zoomValue;
                  this.adjustField();
                  this._optionsProxy.buttonChanged(OptionsMenuNavigationConstants.TOGGLE_ZOOM,false);
                  facade.sendNotification(ApplicationNotificationConstants.FIELD_ZOOMED,param1);
               }
            }
         }
      }
      
      public function zoomOut(param1:Boolean = false) : void
      {
         if(!this._popUpProxy.isPopupOpen)
         {
            if(this._currentZoomPointer > 0)
            {
               --this._currentZoomPointer;
               this._zoomValue = this._zoomStepArray[this._currentZoomPointer];
               if(this._isoView.currentZoom != this._zoomValue)
               {
                  this._isoView.currentZoom = this._zoomValue;
                  this.adjustField();
                  this._optionsProxy.buttonChanged(OptionsMenuNavigationConstants.TOGGLE_ZOOM,true);
                  facade.sendNotification(ApplicationNotificationConstants.FIELD_ZOOMED,param1);
               }
            }
         }
      }
      
      public function toggleBetterPerformance(param1:Boolean) : void
      {
         this._enableBetterPerformance = param1;
      }
      
      public function destroy() : void
      {
         this.active = false;
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      public function set active(param1:Boolean) : void
      {
         if(!this._active && param1)
         {
            this._isoView.addEventListener(MouseEvent.MOUSE_WHEEL,this.wheel);
            this._background.addEventListener(MouseEvent.MOUSE_WHEEL,this.wheel);
         }
         else if(this._active && !param1)
         {
            this._isoView.removeEventListener(MouseEvent.MOUSE_WHEEL,this.wheel);
            this._background.removeEventListener(MouseEvent.MOUSE_WHEEL,this.wheel);
         }
         this._active = param1;
      }
      
      public function set zoomSmoothTime(param1:Number) : void
      {
         this._zoomSmoothTime = param1;
      }
      
      public function get mouseWheelMultiplier() : Number
      {
         return this._mouseWheelMultiplier;
      }
      
      public function set mouseWheelMultiplier(param1:Number) : void
      {
         this._mouseWheelMultiplier = param1;
      }
   }
}

