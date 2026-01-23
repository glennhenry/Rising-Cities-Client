package net.bigpoint.cityrama.controller.field
{
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.Event;
   import net.bigpoint.cityrama.controller.EventAssetPackageLoaderFactory;
   import net.bigpoint.cityrama.model.ServerBalanceParameterConstants;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.EventQuestVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.vo.CitySquareFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadServiceProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CitySquareFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CitySquareInfieldOperationCommand extends SimpleCommand implements ICommand
   {
      
      private var _currentAsset:PreloadableDisplayObject;
      
      private var _citySquareDirty:Boolean;
      
      public function CitySquareInfieldOperationCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc10_:Number = NaN;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:CitySquareFieldObject = _loc2_.getCitySquare();
         var _loc4_:FileRuntimeLoadServiceProxy = facade.retrieveProxy(FileRuntimeLoadServiceProxy.NAME) as FileRuntimeLoadServiceProxy;
         if(_loc3_ == null)
         {
            return;
         }
         this._citySquareDirty = false;
         var _loc5_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc6_:CvTagProxy = super.facade.retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
         if(_loc5_.expiredEventQuest != null)
         {
            this._citySquareDirty = _loc3_.citySquareFieldObjectVo.currentEventState != CitySquareFieldObjectVo.EXPIRED;
            var _loc7_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
            var _loc8_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
            var _loc9_:EventQuestVo = _loc5_.expiredEventQuest;
            _loc10_ = _loc9_.quests[0].questDto.endTimeStamp + null.config.balanceParameters[ServerBalanceParameterConstants.UPSELLING_OVERTIME].value;
            _loc3_.citySquareFieldObjectVo.currentEventState = CitySquareFieldObjectVo.NONE;
            this._currentAsset = new PreloadableDisplayObject(new Sprite(),_loc4_.service.getLoaderForObjectInstance(_loc3_.citySquareFieldObjectVo.configPlayfieldItemVo.animatedSwfName,_loc3_.citySquareFieldObjectVo.configPlayfieldItemVo.animatedSwfName,true,true));
         }
         else if(_loc5_.finishedEventQuest != null)
         {
            this._citySquareDirty = _loc3_.citySquareFieldObjectVo.currentEventState != CitySquareFieldObjectVo.FINISHED;
            _loc3_.citySquareFieldObjectVo.currentEventState = CitySquareFieldObjectVo.FINISHED;
            _loc3_.citySquareFieldObjectVo.currentEventStage = _loc5_.finishedEventQuest.currentRewardStage;
            this._currentAsset = new PreloadableDisplayObject(new Sprite(),_loc4_.service.getLoaderForObjectInstance(EventAssetPackageLoaderFactory.SWF_LOADER_EVENT_PREFIX + _loc5_.finishedEventQuest.quests[0].config.gfxId,_loc5_.finishedEventQuest.quests[0].config.gfxId.toString() + "_FieldItem",true,true));
            if(!this._currentAsset.loadComplete)
            {
               this._currentAsset.addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.delayedChangeAsset);
            }
         }
         else if(_loc5_.runningEventQuest != null)
         {
            this._citySquareDirty = _loc3_.citySquareFieldObjectVo.currentEventState != CitySquareFieldObjectVo.RUNNING;
            _loc3_.citySquareFieldObjectVo.currentEventState = CitySquareFieldObjectVo.RUNNING;
            _loc3_.citySquareFieldObjectVo.currentEventGfxId = _loc5_.runningEventQuest.quests[0].config.gfxId;
            _loc3_.citySquareFieldObjectVo.currentEventStage = _loc5_.runningEventQuest.currentActiveStage;
            this._currentAsset = new PreloadableDisplayObject(new Sprite(),_loc4_.service.getLoaderForObjectInstance(EventAssetPackageLoaderFactory.SWF_LOADER_EVENT_PREFIX + _loc5_.runningEventQuest.quests[0].config.gfxId,_loc5_.runningEventQuest.quests[0].config.gfxId.toString() + "_FieldItem",true,true));
            if(!this._currentAsset.loadComplete)
            {
               this._currentAsset.addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.delayedChangeAsset);
            }
            for each(var _loc11_ in _loc2_.productionBuildingList)
            {
               _loc11_.productionFieldObjectVo.currentRunningEventGFXId = _loc5_.currentRunningEventQuestGfxId;
            }
         }
         else if(_loc5_.availableEventQuests.length != 0)
         {
            this._citySquareDirty = _loc3_.citySquareFieldObjectVo.currentEventState != CitySquareFieldObjectVo.AVAILIBLE;
            _loc3_.citySquareFieldObjectVo.currentEventState = CitySquareFieldObjectVo.AVAILIBLE;
            this._currentAsset = new PreloadableDisplayObject(new Sprite(),_loc4_.service.getLoaderForObjectInstance(_loc3_.citySquareFieldObjectVo.configPlayfieldItemVo.animatedSwfName,_loc3_.citySquareFieldObjectVo.configPlayfieldItemVo.animatedSwfName,true,true));
         }
         else
         {
            this._currentAsset = new PreloadableDisplayObject(new Sprite(),_loc4_.service.getLoaderForObjectInstance(_loc3_.citySquareFieldObjectVo.configPlayfieldItemVo.animatedSwfName,_loc3_.citySquareFieldObjectVo.configPlayfieldItemVo.animatedSwfName,true,true));
            this._citySquareDirty = _loc3_.citySquareFieldObjectVo.currentEventState != CitySquareFieldObjectVo.NONE;
            _loc3_.citySquareFieldObjectVo.currentEventState = CitySquareFieldObjectVo.NONE;
         }
         this.delayedChangeAsset();
      }
      
      private function delayedChangeAsset(param1:Event = null) : void
      {
         this._currentAsset.removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.delayedChangeAsset);
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         if(!_loc2_)
         {
            TweenMax.delayedCall(2,this.delayedChangeAsset);
            return;
         }
         var _loc3_:CitySquareFieldObject = _loc2_.getCitySquare();
         var _loc4_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         if(_loc3_ != null)
         {
            _loc3_.changeInfieldAsset(this._currentAsset);
            _loc3_.invalidateEstablishedManager();
            _loc3_.invalidateIconStateManager();
         }
      }
   }
}

