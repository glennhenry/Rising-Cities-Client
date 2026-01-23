package net.bigpoint.cityrama.view.horizon
{
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import flash.display.Sprite;
   import flash.geom.Point;
   import mx.core.FlexGlobals;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.MatrixProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.horizon.HorizonProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.view.application.ui.components.MainView;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.SkinnableContainer;
   
   public class HorizonLayerMediator extends Mediator
   {
      
      public static const NAME:String = "HorizonLayerMediator";
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _matrixProxy:MatrixProxy;
      
      private var _filePreloadServiceProxy:FilePreloadServiceProxy;
      
      private var _horizonProxy:HorizonProxy;
      
      private var _fieldInfoLayerProxy:FieldInfoLayerProxy;
      
      private var _requestStarted:Boolean;
      
      private var _resizeHack:int;
      
      public function HorizonLayerMediator(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._requestStarted = false;
         this._playfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         this._matrixProxy = MatrixProxy(facade.retrieveProxy(MatrixProxy.NAME));
         this._filePreloadServiceProxy = facade.retrieveProxy(FilePreloadServiceProxy.NAME) as FilePreloadServiceProxy;
         this._fieldInfoLayerProxy = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
         this._horizonProxy = facade.retrieveProxy(HorizonProxy.NAME) as HorizonProxy;
         this._horizonProxy.loadResourceFile();
         this._resizeHack = 1;
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(7706950);
         _loc1_.graphics.drawRect(0,0,this.mainPresentation.width,this.mainPresentation.height);
         _loc1_.graphics.endFill();
         this.horizonPresentation.addChild(_loc1_);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.FIELD_ZOOMED,ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS,ApplicationNotificationConstants.HORIZON_MAPFACTORY_READY,ApplicationNotificationConstants.FIELD_GENERATED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:Sprite = null;
         var _loc3_:SkinnableContainer = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.HORIZON_MAPFACTORY_READY:
               _loc2_ = param1.getBody() as Sprite;
               this.horizonPresentation.addChild(_loc2_);
               this.updateProxy();
               break;
            case ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS:
               if(this._fieldInfoLayerProxy.isoView)
               {
                  this._fieldInfoLayerProxy.isoView.panBy(this._resizeHack,this._resizeHack);
                  this._resizeHack = this._resizeHack % 4 + 1;
                  if(!this._horizonProxy.tiledMapReady)
                  {
                     return;
                  }
                  this.updateProxy(true);
                  _loc3_ = this.mainPresentation as SkinnableContainer;
                  _loc3_.invalidateDisplayList();
               }
               break;
            case ApplicationNotificationConstants.FIELD_ZOOMED:
            case ApplicationNotificationConstants.FIELD_GENERATED:
               this.updateProxy();
         }
      }
      
      private function updateProxy(param1:Boolean = false) : void
      {
         var _loc2_:Point = IsoMath.isoToScreen(new Pt(0,0,0));
         var _loc3_:Number = 1;
         if(this._fieldInfoLayerProxy.isoView != null)
         {
            _loc3_ = this._fieldInfoLayerProxy.isoView.currentZoom;
         }
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         if(this._fieldInfoLayerProxy.isoView != null)
         {
            _loc4_ = Math.round(-this._fieldInfoLayerProxy.isoView.currentX * _loc3_ + _loc2_.x + FlexGlobals.topLevelApplication.stage.stageWidth / 2);
            _loc5_ = Math.round(-this._fieldInfoLayerProxy.isoView.currentY * _loc3_ + _loc2_.y + FlexGlobals.topLevelApplication.stage.stageHeight / 2);
         }
         else
         {
            _loc5_ = -800;
         }
         this._horizonProxy.updatePosition(Math.round(_loc4_),Math.round(_loc5_),_loc3_,param1);
      }
      
      private function get mainPresentation() : Sprite
      {
         return viewComponent as MainView;
      }
      
      private function get horizonPresentation() : Sprite
      {
         var _loc1_:MainView = viewComponent as MainView;
         return Sprite(_loc1_.backgroundLayer);
      }
      
      override public function onRemove() : void
      {
         while(this.horizonPresentation.numChildren)
         {
            this.horizonPresentation.removeChildAt(0);
         }
      }
   }
}

