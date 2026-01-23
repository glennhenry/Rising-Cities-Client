package net.bigpoint.cityrama.controller.applicationModes.build
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.KeyboardInputActionProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.streetBuilding.StreetBuildProxy;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PierObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PlaneObject;
   import net.bigpoint.cityrama.view.field.ui.components.factory.ServerTagToClassSelector;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFloaterObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloat;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldClickForBuildCommand extends SimpleCommand
   {
      
      private var _playfieldObjetcsProxy:PlayfieldObjectsProxy;
      
      private var _playerResourceProxy:PlayerResourceProxy;
      
      private var _goodStockProxy:PlayerGoodsStockProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _fieldBuildProxy:FieldBuildProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _streetBuildProxy:StreetBuildProxy;
      
      private var _lastBuiltStreet:IPlaneObject;
      
      private var _numberOfStreetsBuilt:int;
      
      public function FieldClickForBuildCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:IGameObjectVo = null;
         var _loc10_:Vector.<IPlaneObject> = null;
         var _loc11_:Number = NaN;
         var _loc12_:IPlaneObject = null;
         var _loc13_:KeyboardInputActionProxy = null;
         var _loc2_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         var _loc3_:TimerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         var _loc4_:FilePreloadServiceProxy = FilePreloadServiceProxy(facade.retrieveProxy(FilePreloadServiceProxy.NAME));
         var _loc5_:RestrictionProxy = RestrictionProxy(facade.retrieveProxy(RestrictionProxy.NAME));
         var _loc6_:GridProxy = GridProxy(facade.retrieveProxy(GridProxy.NAME));
         this._goodStockProxy = PlayerGoodsStockProxy(facade.retrieveProxy(PlayerGoodsStockProxy.NAME));
         this._playfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         this._playfieldObjetcsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         this._fieldBuildProxy = FieldBuildProxy(facade.retrieveProxy(FieldBuildProxy.NAME));
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         for each(_loc8_ in this._fieldBuildProxy.selectedConfig.tagIds)
         {
            if(ConfigTagDTO(_loc2_.config.tags[_loc8_]).tagName == ServerTagConstants.GROUND)
            {
               _loc7_ = true;
            }
         }
         _loc6_.overrideStreets = _loc7_;
         if(!_loc7_)
         {
            if(_loc6_.selectedRectangleIsFree && _loc5_.positionPossible(this._fieldBuildProxy.selectedConfig))
            {
               _loc9_ = ServerTagToClassSelector.getFieldObjectVoClassByTags(this._fieldBuildProxy.selectedConfig,_loc6_.selectedCuboid.clone() as Cuboid,_loc3_,_loc2_,this._playfieldProxy);
               if(_loc9_ is BillboardObjectVo)
               {
                  (_loc9_ as BillboardObjectVo).showPlacementPreview = false;
                  PlayfieldObjectsProxy.addIconOffsets(_loc9_ as BillboardObjectVo,_loc4_);
               }
               this.buildGameObject(_loc9_);
            }
         }
         else
         {
            this._streetBuildProxy = facade.retrieveProxy(StreetBuildProxy.NAME) as StreetBuildProxy;
            if(!this._streetBuildProxy.isStartSet)
            {
               if(_loc6_.selectedRectangleIsFree && _loc5_.positionPossible(this._fieldBuildProxy.selectedConfig))
               {
                  this.setStartPoint(_loc6_.selectedCuboid);
               }
            }
            else if(_loc6_.selectedRectangleIsFree && _loc5_.positionPossible(this._fieldBuildProxy.selectedConfig))
            {
               this._streetBuildProxy.setTo(_loc6_.selectedCuboid);
               _loc10_ = this._streetBuildProxy.getStreetsToBuild();
               this._numberOfStreetsBuilt = 0;
               this._streetBuildProxy.isAnimating = true;
               _loc11_ = 0;
               for each(_loc12_ in _loc10_)
               {
                  _loc11_++;
                  this._streetBuildProxy.delayedBuildCalls.push(TweenMax.to(this._streetBuildProxy,_loc11_ / 10,{
                     "onComplete":this.constructStreet,
                     "onCompleteParams":[_loc12_.objectVo,_loc3_,_loc2_]
                  }));
               }
               this._streetBuildProxy.delayedFloaterCalls.push(TweenMax.to(this._streetBuildProxy,_loc11_ / 10,{"onComplete":this.spawnFloaterForStreets}));
               _loc13_ = facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy;
               if(_loc13_.shiftIsPressed)
               {
                  TweenMax.delayedCall(_loc11_ / 10,this.setStartPoint,[_loc6_.selectedCuboid]);
               }
            }
         }
      }
      
      private function setStartPoint(param1:Cuboid) : void
      {
         var _loc2_:FieldBuildProxy = FieldBuildProxy(facade.retrieveProxy(FieldBuildProxy.NAME));
         var _loc3_:Number = (facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy).ingameCurrency;
         if(_loc2_.selectedConfig.constructionPhases.length > 0)
         {
            if(_loc2_.selectedConfig.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).listEntryOutputs.length > 0 && Boolean(_loc2_.selectedConfig.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY)))
            {
               if(_loc3_ < Math.abs(_loc2_.selectedConfig.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY).outputAmount))
               {
                  sendNotification(MiniLayerConstants.OPEN_MINI_PLACEMENT,true);
                  return;
               }
            }
         }
         this._streetBuildProxy.setStart(param1);
      }
      
      private function buildGameObject(param1:IGameObjectVo) : void
      {
         var _loc3_:BillboardObjectVo = null;
         var _loc4_:Boolean = false;
         var _loc5_:ArchitecturalBookProxy = null;
         var _loc6_:BlueprintVo = null;
         var _loc7_:KeyboardInputActionProxy = null;
         var _loc8_:Boolean = false;
         var _loc9_:FeaturedEventProxy = null;
         var _loc10_:ConfigPlayfieldItemDTO = null;
         var _loc11_:PlaneObjectVo = null;
         var _loc12_:IGameObjectVo = null;
         var _loc13_:Boolean = false;
         var _loc14_:IPlaneObject = null;
         var _loc15_:IPlaneObject = null;
         var _loc2_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         this._playerResourceProxy = PlayerResourceProxy(facade.retrieveProxy(PlayerResourceProxy.NAME));
         if(param1 is BillboardObjectVo)
         {
            _loc3_ = param1 as BillboardObjectVo;
            _loc4_ = this.hasPermissionsLeft(_loc3_.configPlayfieldItemVo.permissionConfigId);
            _loc5_ = facade.retrieveProxy(ArchitecturalBookProxy.NAME) as ArchitecturalBookProxy;
            _loc6_ = _loc5_.getBluePrint(_loc3_.configPlayfieldItemVo);
            if(this.canUserPlace(_loc6_))
            {
               sendNotification(ApplicationNotificationConstants.BUILD_GAMEOBJECT,{
                  "obj":param1,
                  "priceRC":_loc6_.priceRC
               });
               _loc7_ = facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy;
               if(_loc3_ is DecorationFieldObjectVo || _loc7_.shiftIsPressed)
               {
                  sendNotification(ApplicationNotificationConstants.BLUEPRINT_SELECTED,{"config":_loc3_.configPlayfieldItemVo});
               }
               else
               {
                  _loc2_.mode = ApplicationModeProxy.MODE_NORMAL;
                  sendNotification(ApplicationNotificationConstants.MAINMENUE_RESETBUTTONS);
               }
            }
            else
            {
               _loc8_ = false;
               if(FeaturedEventProxy.isMysteryBuilding(_loc6_.configObj))
               {
                  _loc9_ = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
                  _loc10_ = _loc9_.featuredPlayfieldItem;
                  if(_loc10_ == null || _loc10_ != _loc6_.configObj)
                  {
                     _loc8_ = true;
                  }
               }
               if(!_loc4_ && _loc6_.state != BlueprintVo.STATE_NOT_AVAILABLE && !_loc8_)
               {
                  sendNotification(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,this._fieldBuildProxy.billboardObjectToAdd);
                  sendNotification(MiniLayerConstants.OPEN_MINI_NO_PERMISSION,{
                     "blueprint":_loc6_,
                     "vo":_loc3_
                  });
               }
               else
               {
                  sendNotification(MiniLayerConstants.OPEN_MINI_PLACEMENT,_loc4_);
               }
            }
         }
         else if(param1 is PlaneObjectVo)
         {
            _loc11_ = param1 as PlaneObjectVo;
            if(_loc11_.userCanAffordPlacement(_loc11_.configPlayfieldItemVo,this._playerResourceProxy.ingameCurrency,this._playerResourceProxy.ingameCurrency))
            {
               _loc12_ = this._playfieldObjetcsProxy.getGameObjectByCuboid(_loc11_.matrix3dCoordinates);
               _loc13_ = false;
               if(_loc12_ != null)
               {
                  if(_loc12_ is PlaneObjectVo)
                  {
                     if(_loc12_.configPlayfieldItemVo.id == _loc11_.configPlayfieldItemVo.id)
                     {
                        _loc13_ = true;
                     }
                     else
                     {
                        _loc15_ = this._playfieldObjetcsProxy.getPlaneObjectByVo(_loc12_);
                        this._playfieldObjetcsProxy.removeGameObjectVofromMatrix(_loc12_);
                        sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc15_);
                     }
                  }
               }
               if(!_loc13_)
               {
                  if(!this._streetBuildProxy.skipAnimation)
                  {
                     this._soundProxy.playStreetBuild();
                  }
                  this._playfieldObjetcsProxy.addGameObjectByData(param1);
                  _loc14_ = IPlaneObject(this._playfieldObjetcsProxy.getObjectByVo(_loc11_));
                  _loc14_.presentation.visible = false;
                  _loc14_.container.visible = false;
                  sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_CREATE_GROUND,{
                     "id":_loc11_.configPlayfieldItemVo.id,
                     "x":_loc11_.matrix3dCoordinates.x,
                     "y":_loc11_.matrix3dCoordinates.y
                  });
                  TweenMax.to(_loc14_.container,0,{"colorTransform":{
                     "tint":0,
                     "tintAmount":0
                  }});
                  TweenMax.to(_loc14_.presentation,0.1,{"visible":true});
                  TweenMax.to(_loc14_.container,0.1,{"visible":true});
                  this._lastBuiltStreet = _loc14_;
                  ++this._numberOfStreetsBuilt;
               }
            }
            else
            {
               sendNotification(MiniLayerConstants.OPEN_MINI_PLACEMENT,1);
            }
         }
      }
      
      private function constructStreet(param1:PlaneObjectVo, param2:TimerProxy, param3:GameConfigProxy) : void
      {
         if(this._streetBuildProxy.delayedBuildCalls.length > 0)
         {
            this._streetBuildProxy.delayedBuildCalls.shift().kill();
         }
         if(this._fieldBuildProxy.selectedConfig)
         {
            var _loc4_:IGameObjectVo = ServerTagToClassSelector.getFieldObjectVoClassByTags(this._fieldBuildProxy.selectedConfig,param1.matrix3dCoordinates.clone() as Cuboid,param2,param3,this._playfieldProxy);
            this.buildGameObject(null);
         }
         else
         {
            TweenMax.killDelayedCallsTo(this.constructStreet);
         }
      }
      
      private function spawnFloaterForStreets() : void
      {
         var _loc1_:ConfigPhaseDTO = null;
         var _loc2_:ConfigOutputDTO = null;
         if(this._streetBuildProxy.delayedFloaterCalls.length > 0)
         {
            this._streetBuildProxy.delayedFloaterCalls.shift().kill();
         }
         if(this._lastBuiltStreet)
         {
            if(this._lastBuiltStreet is PlaneObject)
            {
               _loc1_ = (this._lastBuiltStreet.objectVo as PlaneObjectVo).getSpecificConstructionPhase(ServerPhaseTypes.CREATE_PLACE_NORMAL);
               (this._lastBuiltStreet.objectVo as IFloaterObjectVo).informationFloaterPhase = _loc1_;
            }
            else
            {
               _loc1_ = (this._lastBuiltStreet as PierObject).pierObjectVo.getSpecificConstructionPhase(ServerPhaseTypes.CREATE_PLACE_NORMAL);
               (this._lastBuiltStreet as PierObject).pierObjectVo.informationFloaterPhase = _loc1_;
            }
            for each(_loc2_ in _loc1_.listEntryOutputs)
            {
               _loc2_.outputAmount *= this._numberOfStreetsBuilt;
            }
            (this._lastBuiltStreet as IInformationFloat).invalidateInformationFloaterManager();
            for each(_loc2_ in _loc1_.listEntryOutputs)
            {
               _loc2_.outputAmount /= this._numberOfStreetsBuilt;
            }
            this._lastBuiltStreet = null;
         }
         this._streetBuildProxy.isAnimating = false;
      }
      
      private function hasPermissionsLeft(param1:Number) : Boolean
      {
         return this._goodStockProxy.getPermissionAmountByConfigId(param1) > 0;
      }
      
      private function canUserPlace(param1:BlueprintVo) : Boolean
      {
         if(this._fieldBuildProxy.buildAndBuyPermission)
         {
            if(this._playerResourceProxy.realCurrency >= param1.priceRC)
            {
               if(param1.permission.permissionsBought < param1.permission.config.buyCap || param1.permission.config.buyCap == -1)
               {
                  return true;
               }
            }
         }
         else if(param1.permission.permissionsLeft > 0)
         {
            if(this._playerResourceProxy.ingameCurrency >= param1.priceVC)
            {
               return true;
            }
         }
         return false;
      }
   }
}

