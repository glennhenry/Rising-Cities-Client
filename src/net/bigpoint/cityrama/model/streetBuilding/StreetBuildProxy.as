package net.bigpoint.cityrama.model.streetBuilding
{
   import com.baseoneonline.flash.geom.IntPoint;
   import com.greensock.TweenMax;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Rectangle;
   import net.bigpoint.as3toolbox.pathwalkmanager.path.Terrain;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionShapeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionShapePointDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.view.field.ground.ui.components.StreetObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.factory.GameObjectFactory;
   import net.bigpoint.cityrama.view.field.ui.components.factory.ServerTagToClassSelector;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PlayfieldSwitchFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.field3d.interfaces.IMatrixObject3D;
   import net.bigpoint.field3d.interfaces.IObject3D;
   import net.bigpoint.util.Polygon;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class StreetBuildProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "StreetBuildProxy";
      
      private static const GROUND_FREE:int = 1;
      
      private static const GROUND_LOCKED:int = 2;
      
      private static const GROUND_IRRELEVANT:int = -1;
      
      private var _from:Cuboid;
      
      private var _to:Cuboid;
      
      private var _temporaryAdded:Vector.<IPlaneObject> = new Vector.<IPlaneObject>();
      
      private var _streetObjectPool:Vector.<IPlaneObject> = new Vector.<IPlaneObject>();
      
      private var _terrain:Terrain = new Terrain();
      
      private var _timerProxy:TimerProxy;
      
      private var _gameConfigProxy:GameConfigProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _factory:GameObjectFactory;
      
      private var _configContainer:ConfigPlayfieldItemDTO;
      
      private var _costs:int;
      
      private var _resources:int = 0;
      
      private var _isAnimating:Boolean;
      
      private var _skipAnimation:Boolean;
      
      private var _delayedBuildCalls:Vector.<TweenMax>;
      
      private var _delayedFloaterCalls:Vector.<TweenMax>;
      
      public function StreetBuildProxy()
      {
         super(NAME);
      }
      
      private static function chooseTexture(param1:StreetObject) : void
      {
         var _loc2_:Boolean = param1.streetObjectVo.n;
         var _loc3_:Boolean = param1.streetObjectVo.w;
         var _loc4_:Boolean = param1.streetObjectVo.s;
         var _loc5_:Boolean = param1.streetObjectVo.o;
         if(!_loc2_ && !_loc3_ && !_loc4_ && !_loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(_loc2_ && _loc3_ && _loc4_ && _loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(_loc2_ && !_loc3_ && _loc4_ && !_loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").rotation = 90;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(!_loc2_ && _loc3_ && !_loc4_ && _loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").rotation = 0;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(_loc2_ && !_loc3_ && !_loc4_ && !_loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").rotation = 270;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(!_loc2_ && !_loc3_ && !_loc4_ && _loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").rotation = 180;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(!_loc2_ && !_loc3_ && _loc4_ && !_loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").rotation = 90;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(!_loc2_ && _loc3_ && !_loc4_ && !_loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").rotation = 0;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(_loc2_ && _loc3_ && !_loc4_ && !_loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").rotation = 90;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(!_loc2_ && !_loc3_ && _loc4_ && _loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").rotation = 270;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(_loc2_ && !_loc3_ && !_loc4_ && _loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").rotation = 0;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(!_loc2_ && _loc3_ && _loc4_ && !_loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").rotation = 180;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         param1.redraw();
      }
      
      private static function chooseColor(param1:IPlaneObject, param2:int, param3:Number, param4:Number) : void
      {
         if(!isPlaneBuildable(param2,param3,param4))
         {
            TweenMax.to(param1.container,0,{"colorTransform":{
               "tint":16711680,
               "tintAmount":0.5
            }});
         }
         else
         {
            TweenMax.to(param1.container,0,{"colorTransform":{
               "tint":3407616,
               "tintAmount":0.5
            }});
         }
      }
      
      private static function isPlaneBuildable(param1:int, param2:Number, param3:Number) : Boolean
      {
         return (param1 + 1) * param3 <= param2;
      }
      
      override public function onRegister() : void
      {
         var _loc1_:FilePreloadServiceProxy = facade.retrieveProxy(FilePreloadServiceProxy.NAME) as FilePreloadServiceProxy;
         var _loc2_:FileRuntimeLoadServiceProxy = facade.retrieveProxy(FileRuntimeLoadServiceProxy.NAME) as FileRuntimeLoadServiceProxy;
         this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         this._gameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         this._factory = new GameObjectFactory(_loc1_.service,_loc2_.service,this._gameConfigProxy.config.tags);
      }
      
      public function updateTerrain(param1:Vector.<ConfigGroundRestrictionDTO>) : void
      {
         var _loc5_:ConfigGroundRestrictionDTO = null;
         var _loc6_:int = 0;
         var _loc11_:ConfigGroundRestrictionDTO = null;
         var _loc12_:IObject3D = null;
         var _loc13_:Vector.<String> = null;
         var _loc14_:int = 0;
         var _loc15_:ConfigGroundRestrictionShapeDTO = null;
         var _loc16_:Array = null;
         var _loc17_:ConfigGroundRestrictionShapePointDTO = null;
         var _loc18_:Polygon = null;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:IMatrixObject3D = null;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:ExpansionFieldObject = null;
         var _loc30_:int = 0;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:RestrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         this._terrain.tileSize = this._playfieldProxy.tileSize;
         var _loc4_:Boolean = false;
         for each(_loc5_ in param1)
         {
            _loc4_ ||= _loc5_.whiteList;
         }
         _loc6_ = GROUND_FREE;
         if(_loc4_)
         {
            _loc6_ = GROUND_LOCKED;
         }
         var _loc7_:Rectangle = this._playfieldProxy.maxPlayFieldSize;
         var _loc8_:Rectangle = this._playfieldProxy.maxUsablePlayfieldSize;
         var _loc9_:Array = [];
         var _loc10_:int = 0;
         while(_loc10_ < _loc7_.height)
         {
            _loc9_[_loc10_] = [];
            _loc14_ = 0;
            while(_loc14_ < _loc7_.width)
            {
               if(_loc10_ < _loc8_.y || _loc10_ >= _loc8_.y + _loc8_.height || _loc14_ < _loc8_.x || _loc14_ >= _loc8_.x + _loc8_.width)
               {
                  _loc9_[_loc10_][_loc14_] = GROUND_LOCKED;
               }
               else
               {
                  _loc9_[_loc10_][_loc14_] = _loc6_;
               }
               _loc14_++;
            }
            _loc10_++;
         }
         for each(_loc11_ in _loc3_.restrictionGridSource)
         {
            _loc6_ = GROUND_IRRELEVANT;
            for each(_loc5_ in param1)
            {
               if(_loc5_.groundType == _loc11_.groundType)
               {
                  if(_loc5_.whiteList)
                  {
                     _loc6_ = GROUND_FREE;
                     break;
                  }
                  if(_loc5_.blackList)
                  {
                     _loc6_ = GROUND_LOCKED;
                  }
                  break;
               }
            }
            if(_loc6_ != GROUND_IRRELEVANT)
            {
               for each(_loc15_ in _loc11_.configGroundRestrictionShapes)
               {
                  _loc16_ = new Array();
                  for each(_loc17_ in _loc15_.shapePoints)
                  {
                     _loc16_.push(_loc17_);
                  }
                  _loc16_.sortOn(["shapePosition"],Array.NUMERIC);
                  _loc18_ = new Polygon(_loc16_);
                  _loc19_ = _loc8_.x + _loc8_.width;
                  _loc20_ = _loc8_.y + _loc8_.height;
                  _loc21_ = _loc8_.y;
                  while(_loc21_ < _loc20_)
                  {
                     _loc22_ = _loc8_.x;
                     while(_loc22_ < _loc19_)
                     {
                        if(_loc18_.containsPoint(_loc22_,_loc21_))
                        {
                           _loc9_[_loc21_][_loc22_] = _loc6_;
                        }
                        _loc22_++;
                     }
                     _loc21_++;
                  }
               }
            }
         }
         for each(_loc12_ in _loc2_.objectList)
         {
            if(_loc12_ is IMatrixObject3D)
            {
               _loc23_ = _loc12_ as IMatrixObject3D;
               if(!(_loc12_ is IPlaneObject && Boolean((_loc12_ as IPlaneObject).objectVo.configPlayfieldItemVo.destroyable) || _loc12_ is PlayfieldSwitchFieldObject))
               {
                  _loc24_ = _loc23_.fieldMatrixObject3dVo.matrixCoordinates.height;
                  _loc25_ = _loc23_.fieldMatrixObject3dVo.matrixCoordinates.width;
                  _loc26_ = _loc23_.fieldMatrixObject3dVo.matrixCoordinates.top;
                  _loc27_ = _loc23_.fieldMatrixObject3dVo.matrixCoordinates.left;
                  if(_loc12_ is ExpansionFieldObject)
                  {
                     _loc29_ = _loc12_ as ExpansionFieldObject;
                     _loc24_ = _loc29_.billboardObjectVo.matrix3dCoordinates.height;
                     _loc25_ = _loc29_.billboardObjectVo.matrix3dCoordinates.width;
                     _loc26_ = _loc29_.billboardObjectVo.matrix3dCoordinates.top;
                     _loc27_ = _loc29_.billboardObjectVo.matrix3dCoordinates.left;
                  }
                  _loc28_ = _loc26_;
                  while(_loc28_ < _loc26_ + _loc24_)
                  {
                     _loc30_ = _loc27_;
                     while(_loc30_ < _loc27_ + _loc25_)
                     {
                        _loc9_[_loc28_][_loc30_] = GROUND_LOCKED;
                        _loc30_++;
                     }
                     _loc28_++;
                  }
               }
            }
         }
         _loc13_ = new Vector.<String>();
         _loc13_.push("");
         _loc13_.push("free");
         _loc13_.push("locked");
         this._terrain.setMatrix(_loc9_,_loc13_);
      }
      
      private function debugPrint(param1:Array) : void
      {
      }
      
      public function get isStartSet() : Boolean
      {
         return this._from != null;
      }
      
      public function setStart(param1:Cuboid) : void
      {
         if(!param1)
         {
            return;
         }
         if(this._from == null || (this._from.x != param1.x || this._from.y != param1.y))
         {
            this._from = param1;
            this._to = null;
            if(this._configContainer)
            {
               this.updateResources();
            }
         }
      }
      
      public function setTo(param1:Cuboid) : void
      {
         if(!param1)
         {
            this._to = param1;
            return;
         }
         if(this._to == null || (this._to.x != param1.x || this._to.y != param1.y))
         {
            this._to = param1;
            TweenMax.killDelayedCallsTo(this.updateStreet);
            TweenMax.delayedCall(0.1,this.updateStreet);
         }
      }
      
      private function updateStreet() : void
      {
         var _loc4_:IntPoint = null;
         var _loc5_:int = 0;
         var _loc6_:IPlaneObject = null;
         var _loc7_:IGameObjectVo = null;
         var _loc8_:StreetObject = null;
         var _loc9_:StreetObject = null;
         if(this._from == null || this._to == null || this._isAnimating)
         {
            return;
         }
         this.clearTemporary();
         var _loc1_:Vector.<IntPoint> = this._terrain.calculate2PointPath(new IntPoint(this._from.x,this._from.y),new IntPoint(this._to.x,this._to.y),"free");
         var _loc2_:FieldBuildProxy = facade.retrieveProxy(FieldBuildProxy.NAME) as FieldBuildProxy;
         var _loc3_:ConfigPlayfieldItemDTO = _loc2_.selectedConfig;
         if(_loc3_ != this._configContainer)
         {
            this.clearStreetPool();
            this._configContainer = _loc3_;
            this.updateResources();
         }
         for each(_loc4_ in _loc1_)
         {
            if(this._streetObjectPool.length > 0)
            {
               _loc6_ = this._streetObjectPool.shift();
               _loc6_.updateIndex(_loc4_.x,_loc4_.y);
               _loc6_.moveTo(_loc4_.x * this._playfieldProxy.tileSize,_loc4_.y * this._playfieldProxy.tileSize,0);
               _loc6_.presentation.visible = true;
               _loc6_.container.visible = true;
            }
            else
            {
               _loc7_ = ServerTagToClassSelector.getFieldObjectVoClassByTags(this._configContainer,new Cuboid(0,0,1,1,1,1),this._timerProxy,this._gameConfigProxy,this._playfieldProxy);
               _loc6_ = this._factory.getPlane(_loc7_ as IPlaneObjectVo);
               _loc6_.presentation.visible = false;
               _loc6_.container.visible = false;
               _loc6_.updateIndex(_loc4_.x,_loc4_.y);
               _loc6_.moveTo(_loc4_.x * this._playfieldProxy.tileSize,_loc4_.y * this._playfieldProxy.tileSize,0);
               facade.sendNotification(ApplicationNotificationConstants.FIELD_ADD_TEMPORARY,_loc6_);
               TweenMax.to(_loc6_.presentation,0.1,{"visible":true});
               TweenMax.to(_loc6_.container,0.1,{"visible":true});
            }
            this._temporaryAdded.push(_loc6_);
         }
         _loc5_ = 0;
         while(_loc5_ < this._temporaryAdded.length - 1)
         {
            _loc8_ = this._temporaryAdded[_loc5_] as StreetObject;
            if(_loc8_ == null)
            {
               break;
            }
            _loc9_ = this._temporaryAdded[_loc5_ + 1] as StreetObject;
            if(_loc8_.xIndex == _loc9_.xIndex)
            {
               if(_loc8_.yIndex < _loc9_.yIndex)
               {
                  _loc8_.streetObjectVo.n = true;
                  _loc9_.streetObjectVo.s = true;
               }
               else
               {
                  _loc8_.streetObjectVo.s = true;
                  _loc9_.streetObjectVo.n = true;
               }
            }
            else if(_loc8_.xIndex < _loc9_.xIndex)
            {
               _loc8_.streetObjectVo.o = true;
               _loc9_.streetObjectVo.w = true;
            }
            else
            {
               _loc8_.streetObjectVo.w = true;
               _loc9_.streetObjectVo.o = true;
            }
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < this._temporaryAdded.length)
         {
            if(this._temporaryAdded[_loc5_] is StreetObject)
            {
               var _loc10_:StreetObject = this._temporaryAdded[_loc5_] as StreetObject;
               chooseTexture(null);
            }
            chooseColor(this._temporaryAdded[_loc5_],_loc5_,this._resources,this._costs);
            _loc5_++;
         }
      }
      
      public function getStreetsToBuild() : Vector.<IPlaneObject>
      {
         var _loc3_:IPlaneObject = null;
         var _loc1_:Vector.<IPlaneObject> = new Vector.<IPlaneObject>();
         var _loc2_:int = 0;
         while(_loc2_ < this._temporaryAdded.length)
         {
            _loc3_ = this._temporaryAdded[_loc2_];
            if(isPlaneBuildable(_loc2_,this._resources,this._costs))
            {
               _loc1_.push(_loc3_);
            }
            _loc2_++;
         }
         this.clearTemporary();
         this._from = null;
         return _loc1_;
      }
      
      public function getNumStreetsToBuild() : int
      {
         if(this._temporaryAdded != null)
         {
            return this._temporaryAdded.length;
         }
         return 0;
      }
      
      public function clearTemporary() : void
      {
         var _loc1_:IPlaneObject = null;
         var _loc2_:StreetObject = null;
         while(this._temporaryAdded.length > 0)
         {
            _loc1_ = this._temporaryAdded.shift();
            this._streetObjectPool.push(_loc1_);
            _loc1_.presentation.visible = false;
            _loc1_.container.visible = false;
            if(_loc1_ is StreetObject)
            {
               _loc2_ = _loc1_ as StreetObject;
               _loc2_.streetObjectVo.n = false;
               _loc2_.streetObjectVo.s = false;
               _loc2_.streetObjectVo.w = false;
               _loc2_.streetObjectVo.o = false;
            }
         }
      }
      
      private function clearStreetPool() : void
      {
         var _loc1_:IPlaneObject = null;
         while(this._streetObjectPool.length > 0)
         {
            _loc1_ = this._streetObjectPool.shift();
            facade.sendNotification(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,_loc1_);
         }
      }
      
      public function endBuildMode() : void
      {
         var _loc1_:TweenMax = null;
         if(this._isAnimating)
         {
            this._skipAnimation = true;
            for each(_loc1_ in this._delayedFloaterCalls)
            {
               _loc1_.complete();
            }
            this._delayedFloaterCalls.length = 0;
            this._delayedBuildCalls.length = 0;
         }
         this._skipAnimation = false;
         this._from = null;
         this._to = null;
         this.clearTemporary();
         this.clearStreetPool();
      }
      
      private function updateResources() : void
      {
         this._costs = 0;
         this._resources = (facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy).ingameCurrency;
         if(this._configContainer.constructionPhases.length > 0)
         {
            if(this._configContainer.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).listEntryOutputs.length > 0 && Boolean(this._configContainer.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY)))
            {
               this._costs = Math.abs(this._configContainer.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY).outputAmount);
            }
         }
      }
      
      public function set isAnimating(param1:Boolean) : void
      {
         this._isAnimating = param1;
      }
      
      public function get delayedBuildCalls() : Vector.<TweenMax>
      {
         if(!this._delayedBuildCalls)
         {
            this._delayedBuildCalls = new Vector.<TweenMax>();
         }
         return this._delayedBuildCalls;
      }
      
      public function get skipAnimation() : Boolean
      {
         return this._skipAnimation;
      }
      
      public function get delayedFloaterCalls() : Vector.<TweenMax>
      {
         if(!this._delayedFloaterCalls)
         {
            this._delayedFloaterCalls = new Vector.<TweenMax>();
         }
         return this._delayedFloaterCalls;
      }
   }
}

