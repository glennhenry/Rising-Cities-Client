package net.bigpoint.cityrama.controller.urbies
{
   import com.baseoneonline.flash.geom.IntPoint;
   import net.bigpoint.as3toolbox.pathwalkmanager.path.Terrain;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalkerSetter;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.InfiniteWalker;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.SimpleWalker;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.StaticWalker;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.urbies.CitizensProxy;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.PreSpawnProxy;
   import net.bigpoint.cityrama.model.urbies.SpawnProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.FieldMediator;
   import net.bigpoint.util.RisingBitmap;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class HandleTimerTickCommand extends SimpleCommand
   {
      
      private static var _nextUrbie:UrbieLifeVo;
      
      private static var _nextCar:UrbieLifeVo;
      
      private const FEWER_CITIZEN_MAXAMOUNT:int = 5;
      
      private var _urbieLifeProxy:UrbiesLifeProxy;
      
      private var _pathWalkProxy:PathWalkProxy;
      
      private var _fieldMediator:FieldMediator;
      
      private var _appModeProxy:ApplicationModeProxy;
      
      private var _citizensProxy:CitizensProxy;
      
      private var _preSpawnProxy:PreSpawnProxy;
      
      private var _citizenMaxAmount:int;
      
      public function HandleTimerTickCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         this._urbieLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         this._pathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         this._appModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         this._citizensProxy = facade.retrieveProxy(CitizensProxy.NAME) as CitizensProxy;
         this._fieldMediator = facade.retrieveMediator(FieldMediator.NAME) as FieldMediator;
         this._preSpawnProxy = facade.retrieveProxy(PreSpawnProxy.NAME) as PreSpawnProxy;
         var _loc2_:GlobalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
         var _loc3_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc4_:SpawnProxy = facade.retrieveProxy(SpawnProxy.NAME) as SpawnProxy;
         if(_loc2_ == null)
         {
            return;
         }
         if(!this._citizensProxy.loaded)
         {
            if(!this._citizensProxy.loading)
            {
               this._citizensProxy.startLoad();
            }
         }
         else
         {
            if(!this.minimumRoadAvailable())
            {
               return;
            }
            if(!this.fieldReady())
            {
               return;
            }
            if(!_loc4_.enabled)
            {
               return;
            }
            if(!this.shouldSpawnMore())
            {
               return;
            }
            if(!this.isNormalMode())
            {
               return;
            }
            if(this.citizensDataLoaded())
            {
               if(!this._preSpawnProxy.queLength)
               {
                  _loc5_ = 0;
                  _loc6_ = 0;
                  if(_loc3_ != null)
                  {
                     _loc5_ = int(_loc3_.currentRunningEventQuestGfxId);
                     _loc6_ = _loc3_.currentRunningEventStepProgress;
                  }
                  this.spawnUrbie(_loc5_,_loc6_);
                  this.spawnCarCitizen(_loc5_,_loc6_);
               }
               else
               {
                  this.spawnUrbieQue();
               }
            }
         }
      }
      
      private function spawnUrbieQue() : void
      {
         var _loc1_:UrbieLifeVo = null;
         var _loc2_:Vector.<IntPoint> = null;
         var _loc3_:IntPoint = null;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:IWalkerSetter = null;
         var _loc7_:int = 0;
         while(this._preSpawnProxy.queLength)
         {
            if(this._citizenMaxAmount == this._pathWalkProxy.pathwalkManager.walkerContainer.walkers.length)
            {
               _loc6_ = this._pathWalkProxy.pathwalkManager.walkerContainer.walkers.shift() as IWalkerSetter;
               _loc6_.pausePath();
               _loc6_.pathComplete();
               this._pathWalkProxy.pathwalkManager.walkerContainer.killWalker(_loc6_);
            }
            _loc1_ = new UrbieLifeVo(this._preSpawnProxy.nextUrbie());
            _loc6_ = new InfiniteWalker(_loc1_.id,_loc1_.config.terrain);
            _loc2_ = this._pathWalkProxy.pathwalkManager.terrain.map.usableTiles[_loc6_.terrainType];
            _loc4_ = 0;
            while(_loc4_ < 2)
            {
               _loc7_ = Math.floor(_loc2_.length * Math.random());
               _loc3_ = _loc2_[_loc7_];
               _loc6_.waypoints.push(_loc3_);
               _loc4_++;
            }
            _loc5_ = 2;
            _loc6_.speed = this._pathWalkProxy.pathwalkManager.terrain.tileSize / _loc5_;
            this._urbieLifeProxy.addUrbie(_loc1_);
            this._pathWalkProxy.addWalker(_loc6_);
         }
      }
      
      private function fieldReady() : Boolean
      {
         if(!this._fieldMediator)
         {
            return false;
         }
         if(!this._fieldMediator.isoScene)
         {
            return false;
         }
         return true;
      }
      
      private function isNormalMode() : Boolean
      {
         return this._appModeProxy.mode == ApplicationModeProxy.MODE_NORMAL;
      }
      
      private function minimumRoadAvailable() : Boolean
      {
         return this._pathWalkProxy.pathwalkManager.terrain.map.usableTiles[Terrain.TYPE_ALL_TERRAINS].length > 4;
      }
      
      private function shouldSpawnMore() : Boolean
      {
         var _loc3_:SimpleWalker = null;
         var _loc4_:PlayerResourceProxy = null;
         if(this._preSpawnProxy.queLength)
         {
            return true;
         }
         var _loc1_:int = int(this._pathWalkProxy.pathwalkManager.terrain.map.usableTiles[Terrain.TYPE_ALL_TERRAINS].length);
         if(OptionsGlobalVariables.getInstance().normalCitizenAmount)
         {
            _loc4_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
            this._citizenMaxAmount = Math.min(46 * (1 - Math.pow(2,-0.01 * _loc1_)),_loc4_.population);
         }
         else
         {
            this._citizenMaxAmount = this.FEWER_CITIZEN_MAXAMOUNT;
         }
         var _loc2_:Number = 0;
         for each(_loc3_ in this._pathWalkProxy.pathwalkManager.walkerContainer.walkers)
         {
            if(!(_loc3_ is StaticWalker))
            {
               _loc2_++;
            }
         }
         return _loc2_ < this._citizenMaxAmount - 1;
      }
      
      private function citizensDataLoaded() : Boolean
      {
         return this._citizensProxy.xml != null;
      }
      
      private function spawnUrbie(param1:int, param2:Number) : void
      {
         var _loc6_:IntPoint = null;
         var _loc8_:Number = NaN;
         var _loc10_:RisingBitmap = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:IGameObjectVo = null;
         if(_nextUrbie == null)
         {
            _nextUrbie = this._urbieLifeProxy.randomCitizen(param1,param2);
         }
         var _loc3_:InfiniteWalker = new InfiniteWalker(_nextUrbie.id,_nextUrbie.config.terrain);
         _nextUrbie.walker = _loc3_;
         var _loc4_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc5_:Vector.<IntPoint> = this._pathWalkProxy.pathwalkManager.terrain.map.usableTiles[_loc3_.terrainType];
         if((Boolean(_loc5_)) && Boolean(_loc5_.length))
         {
            _loc11_ = 0;
            while(_loc11_ < 10)
            {
               _loc12_ = Math.floor(_loc5_.length * Math.random());
               _loc6_ = _loc5_[_loc12_];
               _loc13_ = _loc4_.getGameObjectByCuboid(new Cuboid(_loc6_.x,_loc6_.y,1,1,1,0));
               if(_loc13_ is IPlaneObjectVo)
               {
                  if((_loc13_ as IPlaneObjectVo).isConnectedToStreet)
                  {
                     _loc3_.waypoints.push(_loc6_);
                     if(_loc3_.waypoints.length == 2)
                     {
                        break;
                     }
                  }
               }
               _loc11_++;
            }
         }
         if(_loc3_.waypoints.length != 2)
         {
            return;
         }
         _loc3_.speed = this._pathWalkProxy.pathwalkManager.terrain.tileSize / 2.5;
         var _loc9_:GlobalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
         if(_loc9_.happinessPercental <= -0.66)
         {
            _loc8_ = Math.random();
            _loc3_.speed = this._pathWalkProxy.pathwalkManager.terrain.tileSize / 3.5;
            if(_loc8_ <= 0.25)
            {
               _loc10_ = new RisingBitmap("citizens_ui_icons","citizens_ui_icons","Citizen_Icons_sadmood");
               _nextUrbie.icon = _loc10_;
            }
         }
         else if(_loc9_.happinessPercental >= 0.66)
         {
            _loc8_ = Math.random();
            if(_loc8_ <= 0.25)
            {
               _loc10_ = new RisingBitmap("citizens_ui_icons","citizens_ui_icons","Citizen_Icons_happymood");
               _nextUrbie.icon = _loc10_;
            }
         }
         this._urbieLifeProxy.addUrbie(_nextUrbie);
         this._pathWalkProxy.addWalker(_loc3_);
         _nextUrbie = null;
      }
      
      private function spawnCarCitizen(param1:int, param2:Number) : void
      {
         var _loc5_:IntPoint = null;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:GlobalBalanceProxy = null;
         var _loc11_:RisingBitmap = null;
         var _loc12_:int = 0;
         var _loc13_:IGameObjectVo = null;
         if(_nextCar == null)
         {
            _nextCar = this._urbieLifeProxy.randomCar(param1,param2);
         }
         var _loc3_:InfiniteWalker = new InfiniteWalker(_nextCar.id,_nextCar.config.terrain);
         _nextCar.walker = _loc3_;
         var _loc4_:Vector.<IntPoint> = this._pathWalkProxy.pathwalkManager.terrain.map.usableTiles[_loc3_.terrainType];
         var _loc6_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         if(Boolean(_loc4_) && Boolean(_loc4_.length))
         {
            _loc7_ = 0;
            while(_loc7_ < 2)
            {
               _loc12_ = Math.floor(_loc4_.length * Math.random());
               _loc5_ = _loc4_[_loc12_];
               _loc13_ = _loc6_.getGameObjectByCuboid(new Cuboid(_loc5_.x,_loc5_.y,1,1,1,0));
               if(_loc13_ is IPlaneObjectVo)
               {
                  if((_loc13_ as IPlaneObjectVo).isConnectedToStreet)
                  {
                     _loc3_.waypoints.push(_loc5_);
                     if(_loc3_.waypoints.length == 2)
                     {
                        break;
                     }
                  }
               }
               _loc7_++;
            }
            if(_loc3_.waypoints.length != 2)
            {
               return;
            }
            _loc8_ = 1;
            _loc3_.speed = this._pathWalkProxy.pathwalkManager.terrain.tileSize / _loc8_;
            _loc10_ = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
            if(_loc10_.energyPercental <= -0.66)
            {
               _loc3_.speed = this._pathWalkProxy.pathwalkManager.terrain.tileSize / 1.5;
               _loc9_ = Math.random();
               if(_loc9_ <= 0.25)
               {
                  _loc11_ = new RisingBitmap("citizens_ui_icons","citizens_ui_icons","Citizen_Icons_lowenergy");
                  _nextCar.icon = _loc11_;
               }
            }
            else if(_loc10_.energyPercental >= 0.66)
            {
               _loc9_ = Math.random();
               if(_loc9_ <= 0.25)
               {
                  _loc11_ = new RisingBitmap("citizens_ui_icons","citizens_ui_icons","Citizen_Icons_highenergy");
                  _nextCar.icon = _loc11_;
               }
            }
            this._urbieLifeProxy.addUrbie(_nextCar);
            this._pathWalkProxy.addWalker(_loc3_);
            _nextCar = null;
         }
      }
   }
}

