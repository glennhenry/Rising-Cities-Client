package net.bigpoint.cityrama.view.field
{
   import as3isolib.display.IsoView;
   import as3isolib.display.scene.IsoScene;
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import com.greensock.TweenMax;
   import com.greensock.easing.Expo;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import mx.core.FlexGlobals;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.constants.ServerRestrictionConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.LayoutProxy;
   import net.bigpoint.cityrama.model.events.ExpansionSaleEventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.horizon.HorizonProxy;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionShapeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionShapePointDTO;
   import net.bigpoint.cityrama.view.application.ui.components.MainView;
   import net.bigpoint.field3d.controlls.mousecontrol.MouseClickFieldControl;
   import net.bigpoint.field3d.controlls.mousecontrol.MouseDragFieldMoveControl;
   import net.bigpoint.field3d.controlls.mousecontrol.MouseWheelZoomControl;
   import net.bigpoint.particles.ParticleSystem;
   import net.bigpoint.particles.particle.ParticleEmitterDecorator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   import spark.core.SpriteVisualElement;
   
   public class FieldViewPortMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "FieldViewPortMediator";
      
      public static const FIELD_MIN_SIZE:Rectangle = new Rectangle(0,0,976,544);
      
      private var _view:IsoView;
      
      private var _layoutProxy:LayoutProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _configProxy:GameConfigProxy;
      
      private var _playfieldExpansionsProxy:PlayfieldExpansionsProxy;
      
      private var _expansionSaleProxy:ExpansionSaleEventProxy;
      
      private var _mouseWheelZoomControl:MouseWheelZoomControl;
      
      private var _mouseClickFieldControl:MouseClickFieldControl;
      
      private var _mouseDragFieldMoveControl:MouseDragFieldMoveControl;
      
      private var _capturePoint:Point = new Point();
      
      private var _isoScene:IsoScene;
      
      private var _particleSystem:ParticleSystem;
      
      private var _resourceMarker:Vector.<Sprite>;
      
      private var _expansionSaleMarker:Vector.<Sprite>;
      
      private var _animatedPan:Pt;
      
      private var _whiteSprite:Sprite;
      
      private var _blendOut:Boolean;
      
      private var _blendInComplete:Boolean;
      
      private var _motionLimitSprite:Sprite;
      
      private var _bmp:Bitmap;
      
      private var _pfGfxId:String;
      
      private var _playfieldAnimation:BitmapClip;
      
      private var _playfieldAnimationKillRequest:Boolean;
      
      public function FieldViewPortMediator(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._layoutProxy = LayoutProxy(facade.retrieveProxy(LayoutProxy.NAME));
         this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._playfieldExpansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
         this._expansionSaleProxy = facade.retrieveProxy(ExpansionSaleEventProxy.NAME) as ExpansionSaleEventProxy;
         this._resourceMarker = new Vector.<Sprite>();
         this._expansionSaleMarker = new Vector.<Sprite>();
         this.createView();
         this.createViewControls();
      }
      
      private function createView() : void
      {
         this._view = new IsoView();
         this._view.clipContent = true;
         this._view.setSize(FIELD_MIN_SIZE.width,FIELD_MIN_SIZE.height);
         this._view.limitRangeOfMotion = false;
         this._view.usePreciseValues = true;
         if(Boolean(this._playfieldProxy) && Boolean(this._playfieldProxy.config))
         {
            this._view.centerOnPt(HorizionSettingsVo.centerPoint(this._playfieldProxy.config.gfxId),false);
         }
         sendNotification(ApplicationNotificationConstants.FIELD_VIEW_NEW,this._view);
      }
      
      private function createViewControls() : void
      {
         this._mouseWheelZoomControl = new MouseWheelZoomControl(this._view,this.backGroundLayer);
         this._mouseDragFieldMoveControl = new MouseDragFieldMoveControl(this._view,this.backGroundLayer);
         this._mouseClickFieldControl = new MouseClickFieldControl(this._view,this._view);
         this._mouseClickFieldControl.addEventListener(MouseClickFieldControl.ON_FIELD_CLICK,this.onFieldClick);
         this._mouseDragFieldMoveControl.flexLayer = this.parallelLayer;
         this._view.addEventListener(Event.ENTER_FRAME,this.onMouseMove);
      }
      
      private function onFieldClick(param1:Event) : void
      {
         sendNotification(ApplicationNotificationConstants.FIELD_CLICK);
         sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS,ApplicationNotificationConstants.FIELD_GENERATED,OptionsMenuNavigationConstants.TOGGLE_ZOOM_IN,OptionsMenuNavigationConstants.TOGGLE_ZOOM_OUT,ApplicationNotificationConstants.PERFORMANCE_FRAMERATE_REPORT,ApplicationNotificationConstants.RENDER_TICK,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_PLAYFIELD_RESOURCES,ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE_PLAYFIELD_RESOURCES,ApplicationNotificationConstants.ANIMATION_LAYER_ADD_PARTICLE,ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE,ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_IN,ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_OUT,ApplicationNotificationConstants.FIELD_PANTO,ApplicationNotificationConstants.FIELD_CENTER_ON_POINT,ApplicationNotificationConstants.FIELD_RESET,ApplicationNotificationConstants.ENABLE_USER_INTERACTION,ApplicationNotificationConstants.RENEW_EXPANSION_SALE_MARKER,ApplicationNotificationConstants.TIMESTAMP_SET
         ,ApplicationNotificationConstants.UPDATE_VIEWPORT,ApplicationNotificationConstants.ADD_SCREENSHOT_TO_FOREGROUND,ApplicationNotificationConstants.SHOW_PLAYFIELD_LOADING_ANIMATION,ApplicationNotificationConstants.HIDE_PLAYFIELD_LOADING_ANIMATION,ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:ParticleEmitterDecorator = null;
         var _loc6_:ParticleEmitterDecorator = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Boolean = false;
         var _loc11_:FieldInfoLayerProxy = null;
         var _loc12_:ConfigGroundRestrictionDTO = null;
         var _loc13_:DisplayObject = null;
         var _loc14_:BitmapData = null;
         var _loc2_:String = param1.getName();
         switch(_loc2_)
         {
            case ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS:
               this._view.setSize(this._layoutProxy.width,this._layoutProxy.height);
               this._mouseDragFieldMoveControl.showPosition(new Pt(this._view.currentX,this._view.currentY));
               break;
            case ApplicationNotificationConstants.UPDATE_VIEWPORT:
               this.setMovementBounds();
               break;
            case ApplicationNotificationConstants.FIELD_GENERATED:
               if(param1.getBody())
               {
                  this._view.addScene(param1.getBody() as IsoScene);
                  this._isoScene = param1.getBody() as IsoScene;
                  this.fieldLayer.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
                  this.fieldLayer.addChild(this._view);
                  _loc11_ = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
                  _loc11_.isoView = this._view;
               }
               break;
            case OptionsMenuNavigationConstants.TOGGLE_ZOOM_OUT:
               this._mouseWheelZoomControl.zoomOut();
               break;
            case OptionsMenuNavigationConstants.TOGGLE_ZOOM_IN:
               this._mouseWheelZoomControl.zoomIn();
               break;
            case ApplicationNotificationConstants.RENDER_TICK:
               if(!this._isoScene)
               {
               }
               break;
            case ApplicationNotificationConstants.PERFORMANCE_FRAMERATE_REPORT:
               _loc3_ = param1.getBody() as Boolean;
               this._mouseWheelZoomControl.toggleBetterPerformance(_loc3_);
               this._mouseDragFieldMoveControl.toggleBetterPerformance(_loc3_);
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_PLAYFIELD_RESOURCES:
               for each(_loc12_ in this._configProxy.config.restrictions)
               {
                  if(_loc12_.playfieldId == this._playfieldProxy.config.id)
                  {
                     if(_loc12_.groundType == ServerRestrictionConstants.CLAYPIT || _loc12_.groundType == ServerRestrictionConstants.SPRING || _loc12_.groundType == ServerRestrictionConstants.FISHINGGROUND)
                     {
                        this.addResourceInfo(_loc12_);
                     }
                  }
               }
               break;
            case ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE_PLAYFIELD_RESOURCES:
               for each(_loc13_ in this._resourceMarker)
               {
                  if(this._view.foregroundContainer.contains(_loc13_))
                  {
                     _loc4_ = this._view.foregroundContainer.getChildIndex(_loc13_);
                     this._view.foregroundContainer.removeChildAt(_loc4_);
                  }
               }
               this._resourceMarker.length = 0;
               break;
            case ApplicationNotificationConstants.RENEW_EXPANSION_SALE_MARKER:
            case ApplicationNotificationConstants.TIMESTAMP_SET:
            case ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED:
               this.renewExpansionSaleMarker();
               break;
            case ApplicationNotificationConstants.ANIMATION_LAYER_ADD_PARTICLE:
               if(this._particleSystem == null)
               {
                  this._particleSystem = new ParticleSystem();
               }
               _loc5_ = param1.getBody() as ParticleEmitterDecorator;
               this._particleSystem.addEmitter(_loc5_);
               break;
            case ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE:
               if(this._particleSystem == null)
               {
                  break;
               }
               _loc6_ = param1.getBody() as ParticleEmitterDecorator;
               this._particleSystem.removeEmitter(_loc6_);
               break;
            case ApplicationNotificationConstants.FIELD_PANTO:
               this.animatedPanTo(Point(param1.getBody()));
               break;
            case ApplicationNotificationConstants.FIELD_CENTER_ON_POINT:
               this._view.centerOnPt(param1.getBody() as Pt,false);
               this._mouseWheelZoomControl.adjustField();
               break;
            case ApplicationNotificationConstants.FIELD_RESET:
               _loc7_ = this._view.currentX;
               _loc8_ = this._view.currentY;
               _loc9_ = this._view.currentZoom;
               this._view.reset();
               this._view.currentZoom = _loc9_;
               this._mouseDragFieldMoveControl.showPosition(new Pt(_loc7_,_loc8_));
               break;
            case ApplicationNotificationConstants.ENABLE_USER_INTERACTION:
               this.enableMainView = Boolean(param1.getBody());
               break;
            case ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_IN:
               this.blendInWhiteLayer();
               break;
            case ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_OUT:
               this._blendOut = true;
               this.blendOutWhiteLayer();
               break;
            case ApplicationNotificationConstants.ADD_SCREENSHOT_TO_FOREGROUND:
               _loc10_ = Boolean(param1.getBody());
               if(_loc10_)
               {
                  _loc14_ = new BitmapData(viewComponent.width,viewComponent.height,true,0);
                  _loc14_.lock();
                  _loc14_.draw(viewComponent as MainView);
                  _loc14_.unlock();
                  this._bmp = new Bitmap(_loc14_);
                  TweenMax.to(this._bmp,1,{"colorTransform":{
                     "tint":0,
                     "tintAmount":0.6
                  }});
                  this.animationLayer.addChild(this._bmp);
                  break;
               }
               if(this._bmp != null)
               {
                  this.animationLayer.removeChild(this._bmp);
               }
               break;
            case ApplicationNotificationConstants.SHOW_PLAYFIELD_LOADING_ANIMATION:
               this._pfGfxId = param1.getBody().toString();
               this.createPlayfieldAnimation();
               break;
            case ApplicationNotificationConstants.HIDE_PLAYFIELD_LOADING_ANIMATION:
               this.killPlayfieldAnimation();
         }
      }
      
      private function createPlayfieldAnimation() : void
      {
         if(this._playfieldAnimationKillRequest)
         {
            this._playfieldAnimationKillRequest = false;
            return;
         }
         switch(this._pfGfxId)
         {
            default:
            case "100":
               this._playfieldAnimation = new BitmapClip(new playfield_loading_animation_100(),"playfieldloadring" + this._pfGfxId,12,false);
               break;
            case "101":
               this._playfieldAnimation = new BitmapClip(new playfield_loading_animation_101(),"playfieldloadring" + this._pfGfxId,12,false);
               break;
            case "102":
               this._playfieldAnimation = new BitmapClip(new playfield_loading_animation_102(),"playfieldloadring" + this._pfGfxId,12,false);
               break;
            case "103":
               this._playfieldAnimation = new BitmapClip(new playfield_loading_animation_103(),"playfieldloadring" + this._pfGfxId,12,false);
         }
         this._playfieldAnimation.stop();
         this._playfieldAnimation.x = FlexGlobals.topLevelApplication.stage.stageWidth / 2;
         this._playfieldAnimation.y = FlexGlobals.topLevelApplication.stage.stageHeight / 2;
         this._playfieldAnimation.fps = 12;
         this.animationLayer.addChild(this._playfieldAnimation);
         this._playfieldAnimation.play();
      }
      
      private function killPlayfieldAnimation() : void
      {
         this._playfieldAnimationKillRequest = true;
         if(this._playfieldAnimation != null)
         {
            this._playfieldAnimationKillRequest = false;
            this._playfieldAnimation.removeAfterPlay = true;
            this._playfieldAnimation.stop();
            this.animationLayer.removeChild(this._playfieldAnimation);
            this._playfieldAnimation = null;
         }
      }
      
      private function setMovementBounds() : void
      {
         if(this._motionLimitSprite != null)
         {
            this._view.backgroundContainer.removeChild(this._motionLimitSprite);
         }
         this._motionLimitSprite = new Sprite();
         this._view.backgroundContainer.addChild(this._motionLimitSprite);
         this._motionLimitSprite.graphics.beginFill(65535,0);
         this._motionLimitSprite.graphics.drawRect(this.horizonProxy.horizonSettings.offsetPoint.x,this.horizonProxy.horizonSettings.offsetPoint.y,this.maxWidthMotionLimit,this.maxHeightMotionLimit);
         this._motionLimitSprite.graphics.endFill();
      }
      
      private function blendInWhiteLayer() : void
      {
         if(this._whiteSprite != null && this._whiteSprite.parent == this.animationLayer)
         {
            this.animationLayer.removeChild(this._whiteSprite);
         }
         this._whiteSprite = new Sprite();
         this._whiteSprite.graphics.beginFill(16777215,1);
         this._whiteSprite.graphics.drawRect(0,0,this._view.stage.stageWidth,this._view.stage.stageHeight);
         this._whiteSprite.graphics.endFill();
         this._whiteSprite.alpha = 0;
         this.animationLayer.addChild(this._whiteSprite);
         this._blendOut = false;
         this._blendInComplete = false;
         TweenMax.to(this._whiteSprite,0.28,{
            "alpha":1,
            "onComplete":this.onCompleteWhiteBlend
         });
      }
      
      private function onCompleteWhiteBlend() : void
      {
         this._blendInComplete = true;
         this.blendOutWhiteLayer();
      }
      
      private function blendOutWhiteLayer() : void
      {
         if(this._blendOut && this._blendInComplete)
         {
            TweenMax.to(this._whiteSprite,0.2,{"alpha":0});
         }
      }
      
      private function animatedPanTo(param1:Point) : void
      {
         sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE);
         this._animatedPan = this._view.currentPt;
         var _loc2_:Pt = IsoMath.isoToScreen(new Pt(param1.x * this._playfieldProxy.tileSize,param1.y * this._playfieldProxy.tileSize));
         TweenMax.to(this._animatedPan,1,{
            "x":_loc2_.x,
            "y":_loc2_.y,
            "onUpdate":this.animatedPanStepper,
            "onComplete":this.animatedPanComplete,
            "ease":Expo.easeOut
         });
      }
      
      private function animatedPanStepper() : void
      {
         var _loc1_:Pt = new Pt(this._animatedPan.x,this._animatedPan.y);
         this._mouseDragFieldMoveControl.showPosition(_loc1_);
      }
      
      private function animatedPanComplete() : void
      {
         facade.sendNotification(ApplicationNotificationConstants.FIELD_RESET);
      }
      
      private function onMouseMove(param1:Event = null) : void
      {
         var _loc2_:Point = new Point(this._view.mouseX,this._view.mouseY);
         this._capturePoint = this._view.localToIso(_loc2_);
         this._playfieldProxy.mouse2dPoint = this._capturePoint;
      }
      
      private function set enableMainView(param1:Boolean) : void
      {
         var _loc2_:MainView = viewComponent as MainView;
         _loc2_.mouseEnabled = _loc2_.mouseChildren = param1;
      }
      
      private function get fieldLayer() : SpriteVisualElement
      {
         var _loc1_:MainView = viewComponent as MainView;
         return _loc1_.fieldlayer as SpriteVisualElement;
      }
      
      private function get parallelLayer() : Group
      {
         var _loc1_:MainView = viewComponent as MainView;
         return _loc1_.infoandIconLayer as Group;
      }
      
      private function get backGroundLayer() : Sprite
      {
         var _loc1_:MainView = viewComponent as MainView;
         return _loc1_.backgroundLayer as Sprite;
      }
      
      private function get animationLayer() : Sprite
      {
         var _loc1_:MainView = viewComponent as MainView;
         return _loc1_.animationlayer as Sprite;
      }
      
      public function get forgroundContainer() : Sprite
      {
         return this._view.foregroundContainer;
      }
      
      private function renewExpansionSaleMarker() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _temp_1:* = this._view.foregroundContainer;
         this._view.foregroundContainer.mouseEnabled = false;
         _temp_1.mouseChildren = false;
         var _loc1_:FieldInfoLayerProxy = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
         while(this._expansionSaleMarker.length)
         {
            this._view.foregroundContainer.removeChild(this._expansionSaleMarker.pop());
         }
         if(this._expansionSaleProxy.expansionSaleActive)
         {
            var _loc2_:FeatureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
            if(null.isFeatureEnabled(ServerFeatureConstants.EXPANSION))
            {
               for each(var _loc3_ in this._playfieldExpansionsProxy.validExpansionsInactive)
               {
                  if(this._playfieldExpansionsProxy.isBuyableExpansions(null.configPlayfieldItemVo.id))
                  {
                     if(this._expansionSaleProxy.getIsExpansionOnSale(null.configOrigin))
                     {
                        var _loc4_:Sprite = new SaleMarker();
                        this._expansionSaleMarker.push(null);
                        null.mouseEnabled = null.mouseChildren = false;
                        null.cacheAsBitmap = true;
                        _loc5_ = (null.dimensions.x + 3) * this._playfieldProxy.tileSize - 35;
                        _loc6_ = (null.dimensions.y + 3) * this._playfieldProxy.tileSize - 30;
                        var _loc7_:Point = _loc1_.isoToStage(_loc5_,_loc6_);
                        null.x = null.x;
                        null.y = null.y;
                        this._view.foregroundContainer.addChild(null);
                     }
                  }
               }
            }
         }
      }
      
      private function addResourceInfo(param1:ConfigGroundRestrictionDTO) : void
      {
         var _loc2_:Sprite = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc6_:ConfigGroundRestrictionShapeDTO = null;
         if(param1.whiteList)
         {
            for each(_loc6_ in param1.configGroundRestrictionShapes)
            {
               if(param1.groundType == ServerRestrictionConstants.CLAYPIT)
               {
                  _loc2_ = new ClaypitMarker();
               }
               else if(param1.groundType == ServerRestrictionConstants.SPRING)
               {
                  _loc2_ = new SpringMarker();
               }
               else if(param1.groundType == ServerRestrictionConstants.FISHINGGROUND)
               {
                  _loc2_ = new FishingGroundMarker();
               }
               if(_loc2_ != null)
               {
                  var _temp_1:* = _loc2_;
                  _loc2_.mouseChildren = false;
                  _temp_1.mouseEnabled = false;
                  var _temp_2:* = this._view.foregroundContainer;
                  var _loc13_:Boolean;
                  this._view.foregroundContainer.mouseEnabled = _loc13_ = false;
                  _temp_2.mouseChildren = false;
                  var _loc7_:Array = new Array();
                  for each(var _loc8_ in _loc6_.shapePoints)
                  {
                     null.push(null);
                  }
                  _loc7_ = null.sortOn("shapePosition",Array.NUMERIC);
                  var _loc5_:ConfigGroundRestrictionShapePointDTO = _loc7_[0];
                  _loc3_ = _loc5_.x * this._playfieldProxy.tileSize;
                  _loc4_ = null.y * this._playfieldProxy.tileSize;
                  this._view.foregroundContainer.addChild(_loc2_);
                  var _loc9_:FieldInfoLayerProxy = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
                  var _loc10_:Point = _loc9_.isoToStage(_loc3_,_loc4_);
                  _loc2_.x = null.x - _loc2_.width / 2;
                  _loc2_.y = null.y - (this._playfieldProxy.tileSize + 5);
                  this._resourceMarker.push(_loc2_);
               }
            }
         }
      }
      
      private function get horizonProxy() : HorizonProxy
      {
         return facade.retrieveProxy(HorizonProxy.NAME) as HorizonProxy;
      }
      
      private function get maxWidthMotionLimit() : Number
      {
         return HorizionSettingsVo.maxWidthMotionLimit(this._playfieldProxy.config.gfxId);
      }
      
      private function get maxHeightMotionLimit() : Number
      {
         return HorizionSettingsVo.maxHeightMotionLimit(this._playfieldProxy.config.gfxId);
      }
   }
}

