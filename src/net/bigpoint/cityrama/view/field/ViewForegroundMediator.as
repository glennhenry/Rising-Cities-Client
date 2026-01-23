package net.bigpoint.cityrama.view.field
{
   import flash.display.Sprite;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.cityrama.view.field.strategys.DropIconAnimationEvent;
   import net.bigpoint.cityrama.view.field.strategys.DropIconIsoAnimationStrategyHQ;
   import net.bigpoint.cityrama.view.field.strategys.DropIconIsoAnimationStrategyLQ;
   import net.bigpoint.cityrama.view.field.strategys.IDropIconAnimationStrategy;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ViewForegroundMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ViewForegroundMediator";
      
      private var _dropIconAnimationStrategy:IDropIconAnimationStrategy;
      
      private var _optionsettings:OptionsGlobalVariables;
      
      private var _animationLoader:BriskMCDynaLib;
      
      private var _infoLayerProxy:FieldInfoLayerProxy;
      
      public function ViewForegroundMediator(param1:String, param2:Sprite)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._optionsettings = OptionsGlobalVariables.getInstance();
         if(this._optionsettings.highQuality)
         {
            this._dropIconAnimationStrategy = new DropIconIsoAnimationStrategyHQ();
            this._dropIconAnimationStrategy.addEventListener(this._dropIconAnimationStrategy.finishEvent.type,this.onDropComplete);
         }
         else
         {
            this._dropIconAnimationStrategy = new DropIconIsoAnimationStrategyLQ();
         }
         this._dropIconAnimationStrategy.prepare(facade);
         this._infoLayerProxy = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
      }
      
      private function onDropComplete(param1:DropIconAnimationEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,param1.data);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.ISOVIEW_DROPICON_DROP,ApplicationNotificationConstants.QUALITY_CHANGED,ApplicationNotificationConstants.SHOW_RENTCOLLECTOR_ANIMATION];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc3_:Sprite = null;
         var _loc4_:DropIconVO = null;
         var _loc2_:String = param1.getName();
         switch(_loc2_)
         {
            case ApplicationNotificationConstants.ISOVIEW_DROPICON_DROP:
               _loc3_ = param1.getBody().presentation as Sprite;
               _loc4_ = param1.getBody().data as DropIconVO;
               this.component.addChild(_loc3_);
               this._dropIconAnimationStrategy.drop(_loc3_,_loc4_);
               break;
            case ApplicationNotificationConstants.QUALITY_CHANGED:
               if(this._optionsettings.highQuality)
               {
                  if(this._dropIconAnimationStrategy is DropIconIsoAnimationStrategyLQ)
                  {
                     if(this._dropIconAnimationStrategy.finishEvent != null && Boolean(this._dropIconAnimationStrategy.hasEventListener(this._dropIconAnimationStrategy.finishEvent.type)))
                     {
                        this._dropIconAnimationStrategy.removeEventListener(this._dropIconAnimationStrategy.finishEvent.type,this.onDropComplete);
                     }
                     this._dropIconAnimationStrategy = new DropIconIsoAnimationStrategyHQ();
                     this._dropIconAnimationStrategy.addEventListener(this._dropIconAnimationStrategy.finishEvent.type,this.onDropComplete);
                     this._dropIconAnimationStrategy.prepare(facade);
                  }
                  break;
               }
               if(this._dropIconAnimationStrategy.finishEvent != null && this._dropIconAnimationStrategy is DropIconIsoAnimationStrategyHQ)
               {
                  if(this._dropIconAnimationStrategy.hasEventListener(this._dropIconAnimationStrategy.finishEvent.type))
                  {
                     this._dropIconAnimationStrategy.removeEventListener(this._dropIconAnimationStrategy.finishEvent.type,this.onDropComplete);
                  }
                  this._dropIconAnimationStrategy = new DropIconIsoAnimationStrategyLQ();
                  this._dropIconAnimationStrategy.prepare(facade);
               }
               break;
            case ApplicationNotificationConstants.SHOW_RENTCOLLECTOR_ANIMATION:
               if(!this._animationLoader)
               {
                  this._animationLoader = new BriskMCDynaLib();
                  this._animationLoader.addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.initRentCollectorAnimation);
                  this._animationLoader.dynaMCSourceName = "harvesthelper_rent_animation";
                  this._animationLoader.dynaLibName = "gui_production_animation";
                  this._animationLoader.forceExternalCreation();
                  break;
               }
               if(this._animationLoader.movieClip)
               {
                  this.createRentCollectorAnimation();
               }
         }
      }
      
      private function initRentCollectorAnimation(param1:BriskMCDynaLibEvent) : void
      {
         this._animationLoader.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.initRentCollectorAnimation);
         if(this._animationLoader.movieClip)
         {
            this.createRentCollectorAnimation();
         }
      }
      
      private function createRentCollectorAnimation() : void
      {
         var _loc1_:BitmapClip = new BitmapClip(this._animationLoader.movieClip,"harvesthelper_rent_animation",20,true);
         _loc1_.x = this._infoLayerProxy.isoView.currentX;
         _loc1_.y = this._infoLayerProxy.isoView.currentY;
         _loc1_.removeAfterPlay = true;
         this.component.addChild(_loc1_);
         _loc1_.play();
      }
      
      protected function get component() : Sprite
      {
         return viewComponent as Sprite;
      }
   }
}

