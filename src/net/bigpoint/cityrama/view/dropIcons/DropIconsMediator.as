package net.bigpoint.cityrama.view.dropIcons
{
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadDynamicServiceProxy;
   import net.bigpoint.cityrama.view.field.FieldViewPortMediator;
   import net.bigpoint.cityrama.view.field.ViewForegroundMediator;
   import net.bigpoint.cityrama.view.field.strategys.DropIcon2DAnimationStrategyHQ;
   import net.bigpoint.cityrama.view.field.strategys.IDropIconAnimationStrategy;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.core.SpriteVisualElement;
   
   public class DropIconsMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "DropIconsMediator";
      
      private var _fileRuntimeLoadServiceProxy:FileRuntimeLoadDynamicServiceProxy;
      
      private var _loadTaskTriggered:Boolean;
      
      private var _preloadDoneNotification:String;
      
      private var _dropIconQueue:Vector.<DropIconVO>;
      
      private var _animationStrategy:IDropIconAnimationStrategy;
      
      private var _fieldViewPortMediator:FieldViewPortMediator;
      
      public function DropIconsMediator(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._dropIconQueue = new Vector.<DropIconVO>();
         this._fileRuntimeLoadServiceProxy = facade.retrieveProxy(FileRuntimeLoadDynamicServiceProxy.NAME) as FileRuntimeLoadDynamicServiceProxy;
         this._animationStrategy = new DropIcon2DAnimationStrategyHQ();
         this._animationStrategy.prepare(facade);
         this._fieldViewPortMediator = facade.retrieveMediator(FieldViewPortMediator.NAME) as FieldViewPortMediator;
         this.assetsAvailable();
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.POPUP_REMOVE,ApplicationNotificationConstants.POPUP_CREATE,ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP:
               this.dropIsoIcon(param1.getBody() as DropIconVO);
         }
      }
      
      private function drop2dIcon(param1:DropIconVO) : void
      {
         var _loc4_:Point = null;
         if(!this.assetsAvailable())
         {
            this._dropIconQueue.push(param1);
            return;
         }
         var _loc2_:DisplayObject = this.generateDropIcon(param1.type,param1.isEventGood);
         var _loc3_:ViewForegroundMediator = facade.retrieveMediator(ViewForegroundMediator.NAME) as ViewForegroundMediator;
         if(param1.isoTo2D)
         {
            _loc4_ = Sprite(_loc3_.getViewComponent()).localToGlobal(param1.startPoint);
         }
         else
         {
            _loc4_ = new Point(param1.startPoint.x,param1.startPoint.y);
         }
         _loc2_.x = _loc4_.x;
         _loc2_.y = _loc4_.y;
         var _loc5_:FieldInfoLayerProxy = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
         _loc2_.scaleX = _loc5_.isoView.currentZoom;
         _loc2_.scaleY = _loc5_.isoView.currentZoom;
         this.component.addChild(_loc2_);
         this._animationStrategy.drop(_loc2_,param1);
      }
      
      private function dropIsoIcon(param1:DropIconVO) : void
      {
         if(!this.assetsAvailable())
         {
            this._dropIconQueue.push(param1);
            return;
         }
         var _loc2_:DisplayObject = this.generateDropIcon(param1.type,param1.isEventGood);
         sendNotification(ApplicationNotificationConstants.ISOVIEW_DROPICON_DROP,{
            "presentation":_loc2_,
            "data":param1
         });
      }
      
      private function clean() : void
      {
         while(this.component.numChildren > 0)
         {
            this.component.removeChildAt(0);
         }
      }
      
      private function generateDropIcon(param1:String, param2:Boolean) : Sprite
      {
         var _loc3_:Bitmap = null;
         var _loc4_:EventProxy = super.facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         if(param2)
         {
            _loc3_ = this._fileRuntimeLoadServiceProxy.service.getBitmap(_loc4_.currentRunningEventQuestGfxId + "_gui_infield_dropIcons","drop_" + param1);
         }
         else
         {
            _loc3_ = this._fileRuntimeLoadServiceProxy.service.getBitmap("gui_infield_dropIcons","drop_" + param1);
         }
         var _loc5_:Sprite = new Sprite();
         _loc5_.addChild(_loc3_);
         return _loc5_;
      }
      
      public function resumeDropAfterLoading(param1:DropIconVO) : void
      {
         if(param1.state == DropIconVO.STATE_BOUNCE)
         {
            this.dropIsoIcon(param1);
         }
         else if(param1.state == DropIconVO.STATE_FLY)
         {
            this.drop2dIcon(param1);
         }
      }
      
      private function assetsAvailable() : Boolean
      {
         var _loc1_:Array = null;
         if(this._loadTaskTriggered)
         {
            return false;
         }
         if(!this._fileRuntimeLoadServiceProxy.service.libAllReadyLoaded("gui_infield_dropIcons"))
         {
            _loc1_ = ["gui_infield_dropIcons"];
            this._preloadDoneNotification = "preloadDoneNotification_DropIcons";
            this._fileRuntimeLoadServiceProxy.service.addEventListener(this._preloadDoneNotification,this.handleIconsLoaded);
            this._fileRuntimeLoadServiceProxy.service.checkSWFArrayLoaded(_loc1_,this._preloadDoneNotification);
            this._loadTaskTriggered = true;
            return false;
         }
         return true;
      }
      
      private function handleIconsLoaded(param1:Event) : void
      {
         this._loadTaskTriggered = false;
         this._fileRuntimeLoadServiceProxy.service.removeEventListener(this._preloadDoneNotification,this.handleIconsLoaded);
         while(this._dropIconQueue.length)
         {
            this.resumeDropAfterLoading(this._dropIconQueue.pop());
         }
      }
      
      private function get component() : SpriteVisualElement
      {
         return super.viewComponent as SpriteVisualElement;
      }
      
      public function dropIcon(param1:DropIconVO, param2:String) : void
      {
         switch(param2)
         {
            case ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP:
               param1.state = DropIconVO.STATE_FLY;
               this.drop2dIcon(param1);
               break;
            case ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP:
               param1.state = DropIconVO.STATE_BOUNCE;
               this.dropIsoIcon(param1);
         }
      }
   }
}

