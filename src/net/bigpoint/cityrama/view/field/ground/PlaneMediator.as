package net.bigpoint.cityrama.view.field.ground
{
   import as3isolib.display.IsoGroup;
   import as3isolib.display.primitive.IsoRectangle;
   import as3isolib.display.scene.IsoScene;
   import as3isolib.enum.IsoOrientation;
   import as3isolib.graphics.BitmapFill;
   import as3isolib.graphics.Stroke;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PierObjectVo;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionShapeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionShapePointDTO;
   import net.bigpoint.cityrama.view.field.ground.ui.components.BgPrimitive;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PierObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PlaneGridView;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PlaneObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.RestrictionGridView;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.factory.GameObjectFactory;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.field3d.interfaces.IObject3D;
   import net.bigpoint.field3d.objects.SpriteObject3d;
   import net.bigpoint.util.Polygon;
   import net.bigpoint.util.as3isolib.SortedIsoGroup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class PlaneMediator extends Mediator
   {
      
      public static const NAME:String = "PlaneMediator";
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      private var _gridProxy:GridProxy;
      
      private var _playfieldExpansionsProxy:PlayfieldExpansionsProxy;
      
      private var _restrictionProxy:RestrictionProxy;
      
      private var _factory:GameObjectFactory;
      
      private var _itemPlacementPreviewGrid:PlaneGridView;
      
      private var _restrictionGridView:RestrictionGridView;
      
      private var _groundGroup:IsoGroup;
      
      private var _temporaryGroup:IsoGroup;
      
      private var _pierGroup:SortedIsoGroup;
      
      private var _restrictionGroup:IsoGroup;
      
      private var _inactiveFieldPartsGroup:IsoGroup;
      
      private var _expansionGrounds:Vector.<BgPrimitive>;
      
      private var _fieldGridGroup:IsoGroup;
      
      public function PlaneMediator(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         this._gridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         this._playfieldExpansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
         this._restrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         var _loc3_:FilePreloadServiceProxy = facade.retrieveProxy(FilePreloadServiceProxy.NAME) as FilePreloadServiceProxy;
         var _loc4_:FileRuntimeLoadServiceProxy = facade.retrieveProxy(FileRuntimeLoadServiceProxy.NAME) as FileRuntimeLoadServiceProxy;
         var _loc5_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._factory = new GameObjectFactory(_loc3_.service,_loc4_.service,_loc5_.config.tags);
         this._expansionGrounds = new Vector.<BgPrimitive>();
         this._restrictionGridView = new RestrictionGridView(this._playfieldProxy.tileSize,this._playfieldProxy.maxUsablePlayfieldSize);
         this._groundGroup = new IsoGroup();
         this._groundGroup.container.cacheAsBitmap = true;
         this._groundGroup.container.mouseEnabled = true;
         this._groundGroup.container.mouseChildren = true;
         this._temporaryGroup = new IsoGroup();
         this._temporaryGroup.container.cacheAsBitmap = true;
         this._temporaryGroup.container.mouseEnabled = false;
         this._temporaryGroup.container.mouseChildren = false;
         this._pierGroup = new SortedIsoGroup();
         this._pierGroup.container.cacheAsBitmap = true;
         this._pierGroup.container.mouseEnabled = true;
         this._pierGroup.container.mouseChildren = true;
         this._itemPlacementPreviewGrid = new PlaneGridView();
         this._restrictionGroup = new IsoGroup();
         this._restrictionGroup.container.mouseEnabled = false;
         this._restrictionGroup.container.mouseChildren = false;
         this._restrictionGroup.addChild(this._restrictionGridView);
         this._fieldGridGroup = new IsoGroup();
         this._inactiveFieldPartsGroup = new IsoGroup();
         this.drawFieldGrid();
         this.addIsoGroups();
      }
      
      private function drawFieldGrid() : void
      {
         var _loc1_:ExpansionFieldObjectVo = null;
         var _loc2_:IsoRectangle = null;
         this._fieldGridGroup.removeAllChildren();
         for each(_loc1_ in this._playfieldProxy.playfieldDTO.expansions)
         {
            _loc2_ = new IsoRectangle();
            _loc2_.stroke = new Stroke(0,0,0);
            _loc2_.fill = new BitmapFill(new PlacementGridTexture(),IsoOrientation.XY,new Matrix(1,0,0,1,this._playfieldProxy.tileSize,this._playfieldProxy.tileSize));
            _loc2_.setSize(_loc1_.matrix3dCoordinates.width * this._playfieldProxy.tileSize,_loc1_.matrix3dCoordinates.height * this._playfieldProxy.tileSize,0);
            _loc2_.moveTo(_loc1_.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc1_.matrix3dCoordinates.y * this._playfieldProxy.tileSize,0);
            _loc2_.container.mouseChildren = false;
            _loc2_.container.mouseEnabled = false;
            this._fieldGridGroup.addChild(_loc2_);
         }
         this._fieldGridGroup.container.visible = this._gridProxy.tileGridVisiblity;
      }
      
      public function resetGroups() : void
      {
         this._inactiveFieldPartsGroup.removeAllChildren();
         this._groundGroup.removeAllChildren();
         this._temporaryGroup.removeAllChildren();
         this._pierGroup.reset();
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.GENERATE_EXPANSION_GROUND,ApplicationNotificationConstants.GROUND_ITEMGRID_CHANGE_COLOR,ApplicationNotificationConstants.GROUND_REDRAW_GROUNDOBJECT,ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_MOVE,ApplicationNotificationConstants.GROUND_FIELD_GRID_VISIBILITY_CHANGED,ApplicationNotificationConstants.GROUND_ITEM_GRID_VISIBILITY_CHANGED,ApplicationNotificationConstants.GROUND_ITEM_GRID_MOVE,ApplicationNotificationConstants.GROUND_ITEM_GRID_RESIZE,ApplicationNotificationConstants.GROUND_ITEM_STATE_CHANGED,ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,ApplicationNotificationConstants.GROUND_MOVE_GROUND,ApplicationNotificationConstants.FIELD_ADD_TEMPORARY,ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,ApplicationNotificationConstants.RESTRICTION_GRID_NEW_SOURCE,ApplicationNotificationConstants.RESTRICTION_GRID_VISIBILITY_CHANGED,ApplicationNotificationConstants.FIELD_GENERATED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:BgPrimitive = null;
         var _loc3_:PlaneObjectVo = null;
         var _loc4_:IPlaneObject = null;
         var _loc5_:IObject3D = null;
         var _loc6_:PlaneObject = null;
         var _loc7_:ExpansionFieldObject = null;
         var _loc8_:BgPrimitive = null;
         var _loc9_:PierObject = null;
         var _loc10_:IPlaneObject = null;
         var _loc11_:IPlaneObject = null;
         var _loc12_:IPlaneObject = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.GENERATE_EXPANSION_GROUND:
               _loc2_ = param1.getBody() as BgPrimitive;
               this._inactiveFieldPartsGroup.container.mouseEnabled = false;
               this._inactiveFieldPartsGroup.addChild(_loc2_);
               this._expansionGrounds.push(_loc2_);
               break;
            case ApplicationNotificationConstants.GROUND_ITEM_GRID_RESIZE:
               this._itemPlacementPreviewGrid.setGridSize(this._gridProxy.selectedCuboid.width,this._gridProxy.selectedCuboid.height,this._playfieldProxy.tileSize);
               break;
            case ApplicationNotificationConstants.GROUND_ITEM_GRID_VISIBILITY_CHANGED:
               this._itemPlacementPreviewGrid.visible = this._gridProxy.itemGridVisiblity;
               break;
            case ApplicationNotificationConstants.GROUND_ITEM_GRID_MOVE:
               this._itemPlacementPreviewGrid.moveTo(this._gridProxy.selectedCuboid.x * this._playfieldProxy.tileSize,this._gridProxy.selectedCuboid.y * this._playfieldProxy.tileSize,1);
               break;
            case ApplicationNotificationConstants.GROUND_ITEM_STATE_CHANGED:
               if(this._gridProxy.selectedRectangleIsFree)
               {
                  this._itemPlacementPreviewGrid.color = 65280;
                  break;
               }
               this._itemPlacementPreviewGrid.color = 16711680;
               break;
            case ApplicationNotificationConstants.GROUND_ITEMGRID_CHANGE_COLOR:
               if(param1.getBody())
               {
                  this._itemPlacementPreviewGrid.color = uint(param1.getBody());
               }
               break;
            case ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM:
               if(param1.getBody() is PlaneObjectVo)
               {
                  _loc3_ = param1.getBody() as PlaneObjectVo;
                  _loc4_ = this._factory.getPlane(_loc3_);
                  if(_loc3_ is PierObjectVo)
                  {
                     _loc5_ = _loc4_ as IObject3D;
                     _loc5_.setSize(_loc3_.matrix3dCoordinates.width * this._playfieldProxy.tileSize,_loc3_.matrix3dCoordinates.height * this._playfieldProxy.tileSize,1);
                     _loc5_.moveTo(_loc3_.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc3_.matrix3dCoordinates.y * this._playfieldProxy.tileSize,1);
                     this._pierGroup.addChild(_loc4_ as PierObject);
                  }
                  else
                  {
                     this._groundGroup.addChild(_loc4_ as IsoRectangle);
                  }
                  this._playfieldObjectsProxy.addObjectToObjectList(_loc4_);
               }
               break;
            case ApplicationNotificationConstants.FIELD_GENERATED:
               this.drawFieldGrid();
               break;
            case ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM:
               if(param1.getBody() is PlaneObject)
               {
                  _loc6_ = param1.getBody() as PlaneObject;
                  this._groundGroup.removeChild(_loc6_);
                  this._playfieldObjectsProxy.removeObjectFromObjectList(_loc6_);
               }
               if(param1.getBody() is ExpansionFieldObject)
               {
                  _loc7_ = ExpansionFieldObject(param1.getBody());
                  for each(_loc8_ in this._expansionGrounds)
                  {
                     if(_loc8_.x == _loc7_.billboardObjectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize)
                     {
                        if(_loc8_.y == _loc7_.billboardObjectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize)
                        {
                           this._inactiveFieldPartsGroup.removeChild(_loc8_);
                        }
                     }
                  }
                  this.drawFieldGrid();
               }
               if(param1.getBody() is PierObject)
               {
                  _loc9_ = param1.getBody() as PierObject;
                  this._pierGroup.removeChild(_loc9_);
                  this._playfieldObjectsProxy.removeObjectFromObjectList(_loc9_);
               }
               break;
            case ApplicationNotificationConstants.GROUND_FIELD_GRID_VISIBILITY_CHANGED:
               this._fieldGridGroup.container.visible = this._gridProxy.tileGridVisiblity;
               break;
            case ApplicationNotificationConstants.GROUND_REDRAW_GROUNDOBJECT:
               if(param1.getBody() is PlaneObject)
               {
                  (param1.getBody() as PlaneObject).redraw();
               }
               break;
            case ApplicationNotificationConstants.GROUND_MOVE_GROUND:
               if(param1.getBody() is IPlaneObject)
               {
                  _loc10_ = IPlaneObject(param1.getBody());
                  _loc10_.moveTo(_loc10_.objectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc10_.objectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,0);
                  _loc10_.container.visible = true;
               }
               break;
            case ApplicationNotificationConstants.FIELD_ADD_TEMPORARY:
               if(param1.getBody() is IPlaneObject)
               {
                  _loc11_ = param1.getBody() as IPlaneObject;
                  this._temporaryGroup.container.mouseEnabled = false;
                  this._temporaryGroup.container.mouseChildren = false;
                  if(_loc11_ is PierObject)
                  {
                     _loc11_.moveTo(_loc11_.objectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc11_.objectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,1);
                     this._temporaryGroup.addChild(_loc11_ as PierObject);
                     break;
                  }
                  this._temporaryGroup.addChild(_loc11_ as IsoRectangle);
                  (_loc11_ as PlaneObject).fill = (_loc11_ as PlaneObject).standardFill;
               }
               break;
            case ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY:
               if(param1.getBody() is IPlaneObject)
               {
                  _loc12_ = param1.getBody() as IPlaneObject;
                  if(_loc12_ is IsoRectangle)
                  {
                     this._temporaryGroup.removeChild(_loc12_ as IsoRectangle);
                  }
                  else
                  {
                     this._temporaryGroup.removeChild(_loc12_ as SpriteObject3d);
                  }
                  this._temporaryGroup.container.mouseEnabled = true;
                  this._temporaryGroup.container.mouseChildren = true;
               }
               break;
            case ApplicationNotificationConstants.RESTRICTION_GRID_NEW_SOURCE:
               this._restrictionGridView.maxSize = this._playfieldProxy.maxUsablePlayfieldSize;
               this._restrictionGridView.setSource(this._restrictionProxy.restrictionGridSource);
               this.createRestrictionMatrixAndDrawFieldGrid();
               break;
            case ApplicationNotificationConstants.RESTRICTION_GRID_VISIBILITY_CHANGED:
               this._restrictionGridView.visible = this._restrictionProxy.restrictionGridVisibility;
         }
      }
      
      private function createRestrictionMatrixAndDrawFieldGrid() : void
      {
         var _loc3_:ConfigGroundRestrictionDTO = null;
         var _loc4_:ConfigGroundRestrictionDTO = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:ConfigGroundRestrictionShapeDTO = null;
         var _loc8_:Array = null;
         var _loc9_:ConfigGroundRestrictionShapePointDTO = null;
         var _loc10_:Polygon = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:IGameObjectVo = null;
         var _loc1_:Array = new Array();
         var _loc2_:Number = HorizionSettingsVo.playfieldYOffset(this._playfieldProxy.config.id);
         for each(_loc3_ in this._restrictionProxy.restrictionGridSource)
         {
            if(_loc3_.whiteList)
            {
               _loc5_ = 0;
               while(_loc5_ < this._playfieldProxy.maxPlayFieldSize.width)
               {
                  _loc6_ = 0;
                  while(_loc6_ < this._playfieldProxy.maxPlayFieldSize.height)
                  {
                     if(!this.isOutsideActivePlayfield(new Point(_loc5_,_loc6_)))
                     {
                        this._restrictionGridView.addTile(_loc5_,_loc6_ - _loc2_,RestrictionGridView.RED);
                     }
                     _loc6_++;
                  }
                  _loc5_++;
               }
               break;
            }
         }
         for each(_loc4_ in this._restrictionProxy.restrictionGridSource)
         {
            for each(_loc7_ in _loc4_.configGroundRestrictionShapes)
            {
               _loc8_ = new Array();
               for each(_loc9_ in _loc7_.shapePoints)
               {
                  _loc8_.push(_loc9_);
               }
               _loc8_.sortOn(["shapePosition"],Array.NUMERIC);
               _loc10_ = new Polygon(_loc8_);
               _loc11_ = 0;
               while(_loc11_ < this._playfieldProxy.maxPlayFieldSize.width)
               {
                  if(!_loc1_[_loc11_])
                  {
                     _loc1_[_loc11_] = new Array();
                  }
                  _loc12_ = 0;
                  while(_loc12_ < this._playfieldProxy.maxPlayFieldSize.height)
                  {
                     if(!_loc1_[_loc11_][_loc12_])
                     {
                        _loc1_[_loc11_][_loc12_] = {
                           "normal":true,
                           "blacklist":false,
                           "whitelist":false
                        };
                     }
                     if(_loc10_.containsPoint(_loc11_,_loc12_))
                     {
                        if(this.isOutsideActivePlayfield(new Point(_loc11_,_loc12_)))
                        {
                           this._restrictionGridView.addTile(_loc11_,_loc12_ - _loc2_,RestrictionGridView.WHITE);
                        }
                        else if(!this._playfieldObjectsProxy.isFree(new Cuboid(_loc11_,_loc12_,1,1,1,2)))
                        {
                           if(this._restrictionProxy.restrictionItem != null)
                           {
                              if(!this._playfieldObjectsProxy.isOwnPosition(new Cuboid(_loc11_,_loc12_,1,1,1,2),this._restrictionProxy.restrictionItem))
                              {
                                 this._restrictionGridView.addTile(_loc11_,_loc12_ - _loc2_,RestrictionGridView.RED);
                              }
                              else
                              {
                                 this._restrictionGridView.addTile(_loc11_,_loc12_ - _loc2_,RestrictionGridView.GREEN);
                              }
                           }
                           else
                           {
                              _loc13_ = this._playfieldObjectsProxy.getGameObjectByCuboid(new Cuboid(_loc11_,_loc12_,1,1,1,2));
                              if(this._restrictionProxy.ignoreStreets && _loc13_ is IPlaneObjectVo && !_loc4_.blackList)
                              {
                                 this._restrictionGridView.addTile(_loc11_,_loc12_ - _loc2_,RestrictionGridView.GREEN);
                              }
                              else
                              {
                                 this._restrictionGridView.addTile(_loc11_,_loc12_ - _loc2_,RestrictionGridView.RED);
                              }
                           }
                        }
                        else if(_loc4_.blackList)
                        {
                           this._restrictionGridView.addTile(_loc11_,_loc12_ - _loc2_,RestrictionGridView.RED);
                        }
                        else
                        {
                           this._restrictionGridView.addTile(_loc11_,_loc12_ - _loc2_,RestrictionGridView.GREEN);
                        }
                        _loc1_[_loc11_][_loc12_].blacklist = _loc4_.blackList;
                        _loc1_[_loc11_][_loc12_].whitelist = !_loc4_.blackList;
                        _loc1_[_loc11_][_loc12_].normal = false;
                     }
                     _loc12_++;
                  }
                  _loc11_++;
               }
            }
         }
         this._restrictionProxy.restrictionMatrix = _loc1_;
         this._restrictionProxy.restrictionItem = null;
      }
      
      private function isOutsideActivePlayfield(param1:Point) : Boolean
      {
         var _loc2_:ExpansionFieldObjectVo = null;
         var _loc3_:Rectangle = null;
         for each(_loc2_ in this._playfieldExpansionsProxy.validExpansionsInactive)
         {
            _loc3_ = _loc2_.matrixCoordinates;
            if(_loc3_.containsPoint(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      private function addIsoGroups() : void
      {
         this.isoScene.addChild(this._fieldGridGroup);
         this.isoScene.addChild(this._pierGroup);
         this.isoScene.addChild(this._groundGroup);
         this.isoScene.addChild(this._temporaryGroup);
         this.isoScene.addChild(this._inactiveFieldPartsGroup);
         this.isoScene.addChild(this._itemPlacementPreviewGrid);
         this.isoScene.addChild(this._restrictionGroup);
      }
      
      private function get isoScene() : IsoScene
      {
         return IsoScene(viewComponent);
      }
   }
}

