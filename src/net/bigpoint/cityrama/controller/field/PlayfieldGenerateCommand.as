package net.bigpoint.cityrama.controller.field
{
   import as3isolib.display.renderers.DefaultSceneLayoutRenderer;
   import as3isolib.display.scene.IsoScene;
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.init.preloader.PreloaderProgressSingleton;
   import net.bigpoint.cityrama.model.EventStreamProxy;
   import net.bigpoint.cityrama.model.baseView.emergency.EmergencyProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.PlaneProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BoulderVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import net.bigpoint.cityrama.model.urbies.CitizensProxy;
   import net.bigpoint.cityrama.view.field.FieldMediator;
   import net.bigpoint.cityrama.view.field.SecurityGradeHeatMapMediator;
   import net.bigpoint.cityrama.view.field.ground.PlaneMediator;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldGenerateCommand extends SimpleCommand
   {
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _playfieldObjProxy:PlayfieldObjectsProxy;
      
      private var _eventStreamProxy:EventStreamProxy;
      
      private var _buildingList:Vector.<BuildingDTO>;
      
      private var _groundList:Vector.<GroundDTO>;
      
      private var _decorationList:Vector.<DecorationVo>;
      
      private var _boulderList:Vector.<BoulderVo>;
      
      private var _isoScene:IsoScene;
      
      private var _serverComProxy:ServerCommunicationProxy;
      
      private var _iterationSize:int;
      
      public function PlayfieldGenerateCommand()
      {
         super();
      }
      
      private static function printPony() : void
      {
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:BuildingDTO = null;
         var _loc7_:GroundDTO = null;
         var _loc8_:DecorationVo = null;
         var _loc9_:BoulderVo = null;
         this._serverComProxy = facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
         this._serverComProxy.startServerSpool();
         this._playfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         this._playfieldObjProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         this._timerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         this._timerProxy.stopRenderTimer = true;
         this._eventStreamProxy = EventStreamProxy(facade.retrieveProxy(EventStreamProxy.NAME));
         var _loc2_:PlaneProxy = PlaneProxy(facade.retrieveProxy(PlaneProxy.NAME));
         _loc2_.resetModel();
         this._playfieldObjProxy.resetModel();
         PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_FIELD_BUILD_STARTED);
         this._isoScene = new IsoScene();
         this._isoScene.container.visible = false;
         this._isoScene.layoutRenderer = new DefaultSceneLayoutRenderer();
         this._isoScene.layoutEnabled = false;
         var _loc3_:PlaneMediator = new PlaneMediator(PlaneMediator.NAME,this._isoScene);
         facade.registerMediator(_loc3_);
         var _loc4_:FieldMediator = new FieldMediator(FieldMediator.NAME,this._isoScene);
         facade.registerMediator(_loc4_);
         var _loc5_:SecurityGradeHeatMapMediator = new SecurityGradeHeatMapMediator(SecurityGradeHeatMapMediator.NAME,_loc4_.securityGradeHeatMapGroup);
         facade.registerMediator(_loc5_);
         this._buildingList = new Vector.<BuildingDTO>();
         this._groundList = new Vector.<GroundDTO>();
         this._decorationList = new Vector.<DecorationVo>();
         this._boulderList = new Vector.<BoulderVo>();
         for each(_loc6_ in this._playfieldProxy.playfieldDTO.buildings)
         {
            this._buildingList.push(_loc6_);
         }
         for each(_loc7_ in this._playfieldProxy.playfieldDTO.grounds)
         {
            this._groundList.push(_loc7_);
         }
         for each(_loc8_ in this._playfieldProxy.playfieldDTO.decorations)
         {
            this._decorationList.push(_loc8_);
         }
         for each(_loc9_ in this._playfieldProxy.playfieldDTO.boulders)
         {
            this._boulderList.push(_loc9_);
         }
         sendNotification(ApplicationNotificationConstants.START_PLAYFIELD_LOADING_ANIMATION,{
            "gfxId":this._playfieldProxy.playfieldDTO.config.gfxId,
            "initial":true
         });
         TweenMax.delayedCall(3,this.generateItems);
         sendNotification(ApplicationNotificationConstants.CREATE_CLIENT_FIELD_OBJECTS);
         sendNotification(ApplicationNotificationConstants.HORIZON_REDRAW,this._playfieldProxy.config.gfxId);
         this._iterationSize = 50;
      }
      
      private function generateItems() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._iterationSize)
         {
            _loc1_++;
            if(this._buildingList.length)
            {
               _loc1_++;
               this._playfieldProxy.generateBuildings(this._buildingList.pop());
            }
            if(this._groundList.length)
            {
               _loc1_++;
               this._playfieldProxy.generateGrounds(this._groundList.pop());
            }
            if(this._decorationList.length)
            {
               _loc1_++;
               this._playfieldProxy.generateDecorations(this._decorationList.pop());
            }
            if(this._boulderList.length)
            {
               _loc1_++;
               this._playfieldProxy.generateBoulders(this._boulderList.pop());
               if(this._boulderList.length)
               {
                  this._playfieldProxy.generateBoulders(this._boulderList.pop());
               }
               if(this._boulderList.length)
               {
                  this._playfieldProxy.generateBoulders(this._boulderList.pop());
               }
               if(this._boulderList.length)
               {
                  this._playfieldProxy.generateBoulders(this._boulderList.pop());
               }
               if(this._boulderList.length)
               {
                  this._playfieldProxy.generateBoulders(this._boulderList.pop());
               }
            }
         }
         if(Boolean(this._decorationList.length) || Boolean(this._boulderList.length) || Boolean(this._groundList.length) || Boolean(this._buildingList.length))
         {
            TweenMax.delayedCall(1 / 24,this.generateItems);
         }
         else
         {
            this.finishGenerate();
         }
      }
      
      private function finishGenerate() : void
      {
         sendNotification(ApplicationNotificationConstants.FIELD_GENERATED,this._isoScene);
         this._serverComProxy.stopServerSpool();
         this.setCurrentEmergency();
         this._playfieldProxy.updateShops();
         sendNotification(ApplicationNotificationConstants.CHECK_DAILY_NEWSSCREEN);
         this.delayedCitysquareCheck();
         TweenMax.delayedCall(15,this.delayedCitysquareCheck);
         sendNotification(ApplicationNotificationConstants.STOP_PLAYFIELD_LOADING_ANIMATION);
         this._timerProxy.stopRenderTimer = false;
         var _loc1_:CitizensProxy = facade.retrieveProxy(CitizensProxy.NAME) as CitizensProxy;
         _loc1_.scanForPfoTags();
         _loc1_.resetSpawnedList();
         this._isoScene.container.visible = true;
         this._eventStreamProxy.onClientFinishedLoading();
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TIMESTAMP_REQUEST);
         facade.sendNotification(ApplicationNotificationConstants.START_APP_FULLSCREEN);
         facade.sendNotification(ApplicationNotificationConstants.SOUND_ACTIVE);
      }
      
      private function setCurrentEmergency() : void
      {
         var _loc2_:BillboardObject = null;
         var _loc1_:EmergencyProxy = facade.retrieveProxy(EmergencyProxy.NAME) as EmergencyProxy;
         for each(_loc2_ in this._playfieldObjProxy.billboardList)
         {
            if(_loc2_.billboardObjectVo.hasEmergency())
            {
               if(_loc2_.billboardObjectVo.buildingDTO.emergencyDTO)
               {
                  _loc1_.currentEmergency = _loc2_.billboardObjectVo.buildingDTO.emergencyDTO;
               }
            }
         }
      }
      
      private function delayedCitysquareCheck() : void
      {
         sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
         facade.sendNotification(ApplicationNotificationConstants.CHECK_PLAYER_VERSION);
      }
   }
}

