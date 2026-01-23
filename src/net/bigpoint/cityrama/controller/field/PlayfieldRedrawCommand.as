package net.bigpoint.cityrama.controller.field
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BoulderVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldRedrawCommand extends SimpleCommand
   {
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _boulderCache:Vector.<BoulderVo> = new Vector.<BoulderVo>(0);
      
      private var _buildingCache:Vector.<BuildingDTO> = new Vector.<BuildingDTO>(0);
      
      private var _groundCache:Vector.<GroundDTO> = new Vector.<GroundDTO>(0);
      
      private var _decoCache:Vector.<DecorationVo> = new Vector.<DecorationVo>(0);
      
      private var _serverComProxy:ServerCommunicationProxy;
      
      private var _iterationSize:Number;
      
      public function PlayfieldRedrawCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:BuildingDTO = null;
         var _loc3_:GroundDTO = null;
         var _loc4_:DecorationVo = null;
         var _loc5_:BoulderVo = null;
         this._serverComProxy = facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
         this._serverComProxy.startServerSpool();
         this._playfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         this._timerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         if(!facade.hasProxy(PathWalkProxy.NAME))
         {
            facade.registerProxy(new PathWalkProxy());
         }
         for each(_loc2_ in this._playfieldProxy.playfieldDTO.buildings)
         {
            this._buildingCache.push(_loc2_);
         }
         for each(_loc3_ in this._playfieldProxy.playfieldDTO.grounds)
         {
            this._groundCache.push(_loc3_);
         }
         for each(_loc4_ in this._playfieldProxy.playfieldDTO.decorations)
         {
            this._decoCache.push(_loc4_);
         }
         for each(_loc5_ in this._playfieldProxy.playfieldDTO.boulders)
         {
            this._boulderCache.push(_loc5_);
         }
         this._iterationSize = Math.max(1,(this._boulderCache.length * 5 + this._decoCache.length + this._groundCache.length + this._buildingCache.length) / 50);
         this.generateItems();
         sendNotification(ApplicationNotificationConstants.CREATE_CLIENT_FIELD_OBJECTS);
         sendNotification(ApplicationNotificationConstants.INFRASTRUCTURE_FEATURE_STATUS_CHANGED);
      }
      
      private function generateItems() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._iterationSize)
         {
            _loc1_++;
            if(this._buildingCache.length)
            {
               _loc1_++;
               this._playfieldProxy.generateBuildings(this._buildingCache.pop());
            }
            if(this._groundCache.length)
            {
               _loc1_++;
               this._playfieldProxy.generateGrounds(this._groundCache.pop());
            }
            if(this._decoCache.length)
            {
               _loc1_++;
               this._playfieldProxy.generateDecorations(this._decoCache.pop());
            }
            if(this._boulderCache.length)
            {
               _loc1_++;
               this._playfieldProxy.generateBoulders(this._boulderCache.pop());
            }
         }
         if(Boolean(this._decoCache.length) || Boolean(this._boulderCache.length) || Boolean(this._groundCache.length) || Boolean(this._buildingCache.length))
         {
            TweenMax.delayedCall(1 / 24,this.generateItems);
         }
         else
         {
            this.finishRedraw();
         }
      }
      
      private function finishRedraw() : void
      {
         this._serverComProxy.stopServerSpool();
         var _loc1_:QuestProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         this._playfieldProxy.updateShops();
         sendNotification(ApplicationNotificationConstants.FIELD_GENERATED);
         this._timerProxy.stopRenderTimer = false;
         sendNotification(ApplicationNotificationConstants.RESUME_ALL_WALKERS);
         _loc1_.recheckClickTasks();
         sendNotification(ApplicationNotificationConstants.HORIZON_REDRAW,this._playfieldProxy.config.gfxId);
         sendNotification(ApplicationNotificationConstants.FIELD_CENTER_ON_POINT,HorizionSettingsVo.centerPoint(this._playfieldProxy.config.gfxId));
         TweenMax.delayedCall(2,sendNotification,[ApplicationNotificationConstants.STOP_PLAYFIELD_LOADING_ANIMATION]);
      }
   }
}

