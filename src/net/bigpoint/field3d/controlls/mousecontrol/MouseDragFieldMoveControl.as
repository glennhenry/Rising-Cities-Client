package net.bigpoint.field3d.controlls.mousecontrol
{
   import as3isolib.display.IsoView;
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.horizon.HorizonProxy;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import org.puremvc.as3.patterns.proxy.Proxy;
   import spark.components.Group;
   
   public class MouseDragFieldMoveControl extends Proxy
   {
      
      private const SKIP_EVENT_AMOUNT:int = 10;
      
      private var _isoView:IsoView;
      
      private var _active:Boolean = false;
      
      private var _isDragging:Boolean = false;
      
      private var _tolerancePoint:Point;
      
      private var _skipEventFactor:int = 0;
      
      private var _enableBetterPerformance:Boolean;
      
      private var _panPt:Pt;
      
      private var _flexLayer:Group;
      
      private var _background:Sprite;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      public function MouseDragFieldMoveControl(param1:IsoView, param2:Sprite)
      {
         super();
         this._background = param2;
         this._isoView = param1;
         this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         this.active = true;
      }
      
      private function get horizonProxy() : HorizonProxy
      {
         return facade.retrieveProxy(HorizonProxy.NAME) as HorizonProxy;
      }
      
      private function onMouseDownHandler(param1:MouseEvent) : void
      {
         this._tolerancePoint = new Point(param1.stageX,param1.stageY);
         this._panPt = new Pt(this._tolerancePoint.x,this._tolerancePoint.y);
         facade.sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE);
         if(this._active)
         {
            this._isDragging = true;
            this._background.stage.addEventListener(MouseEvent.MOUSE_UP,this.OnGlobalUP);
            this._background.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
            this._background.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
            this._isoView.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
            this._isoView.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
         }
      }
      
      private function onMouseMoveHandler(param1:MouseEvent) : void
      {
         var _loc5_:Pt = null;
         facade.sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE);
         if(this._enableBetterPerformance)
         {
            --this._skipEventFactor;
            if(this._skipEventFactor >= 0)
            {
               return;
            }
            this._skipEventFactor = this.SKIP_EVENT_AMOUNT;
         }
         var _loc2_:Point = new Point(Math.abs(param1.stageX),Math.abs(param1.stageY));
         var _loc3_:Number = this._panPt.x - _loc2_.x;
         var _loc4_:Number = this._panPt.y - _loc2_.y;
         if(Point.distance(this._tolerancePoint,_loc2_) > 30)
         {
            _loc5_ = new Pt(this._isoView.currentX + _loc3_,this._isoView.currentY + _loc4_);
            this.showPosition(_loc5_);
            this._panPt.x = Math.abs(_loc2_.x);
            this._panPt.y = Math.abs(_loc2_.y);
         }
      }
      
      public function clampPositionToPlayfield(param1:Pt) : Pt
      {
         if(this._isoView == null || this._isoView.stage == null)
         {
            return param1;
         }
         var _loc2_:Number = this._isoView.stage.stageWidth * 0.5 / this._isoView.currentZoom;
         var _loc3_:Number = this._isoView.stage.stageHeight * 0.5 / this._isoView.currentZoom;
         var _loc4_:Number = HorizionSettingsVo.maxWidthMotionLimit(this._playfieldProxy.config.gfxId);
         var _loc5_:Number = HorizionSettingsVo.maxHeightMotionLimit(this._playfieldProxy.config.gfxId);
         var _loc6_:Number = HorizionSettingsVo.minPositionX(this._playfieldProxy.config.gfxId);
         var _loc7_:Number = HorizionSettingsVo.minPositionY(this._playfieldProxy.config.gfxId);
         if(param1.x - _loc2_ < _loc6_)
         {
            param1.x = _loc6_ + _loc2_;
         }
         if(param1.x + _loc2_ > _loc6_ + _loc4_)
         {
            param1.x = _loc6_ + _loc4_ - _loc2_;
         }
         if(param1.y - _loc3_ < _loc7_)
         {
            param1.y = _loc7_ + _loc3_;
         }
         if(param1.y + _loc3_ > _loc7_ + _loc5_)
         {
            param1.y = _loc7_ + _loc5_ - _loc3_;
         }
         return param1;
      }
      
      public function showPosition(param1:Pt) : void
      {
         if(this._isoView == null || this._isoView.stage == null)
         {
            return;
         }
         var _loc2_:Pt = this.clampPositionToPlayfield(param1);
         this._isoView.panTo(_loc2_.x,_loc2_.y);
         var _loc3_:Point = IsoMath.isoToScreen(new Pt(0,0,0));
         this._flexLayer.x = -this._isoView.currentX * this._isoView.currentZoom + _loc3_.x + this._isoView.stage.stageWidth / 2;
         this._flexLayer.y = -this._isoView.currentY * this._isoView.currentZoom + _loc3_.y + this._isoView.stage.stageHeight / 2;
         this.horizonProxy.updatePosition(this._flexLayer.x,this._flexLayer.y,this._isoView.currentZoom);
      }
      
      private function OnGlobalUP(param1:MouseEvent) : void
      {
         this._isDragging = false;
         this._background.stage.removeEventListener(MouseEvent.MOUSE_UP,this.OnGlobalUP);
         this._isoView.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
         this._isoView.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
         this._background.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
         this._background.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
      }
      
      private function onMouseUpHandler(param1:MouseEvent) : void
      {
         this._isDragging = false;
         this._isoView.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
         this._isoView.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
         this._background.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
         this._background.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
         facade.sendNotification(ApplicationNotificationConstants.FIELD_RESET);
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
            this._isoView.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownHandler);
            this._background.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownHandler);
         }
         else if(this._active && !param1)
         {
            this._isoView.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownHandler);
            this._background.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownHandler);
         }
         this._active = param1;
      }
      
      public function toggleBetterPerformance(param1:Boolean) : void
      {
         this._enableBetterPerformance = param1;
      }
      
      public function set flexLayer(param1:Group) : void
      {
         this._flexLayer = param1;
      }
   }
}

