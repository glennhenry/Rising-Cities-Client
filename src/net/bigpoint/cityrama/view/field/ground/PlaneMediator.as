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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "PlaneMediator";
      }
      
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
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(!_loc6_)
         {
            super(param1,param2);
            if(_loc7_ || Boolean(param2))
            {
               this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
               if(!_loc6_)
               {
                  this._gridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
                  if(!_loc6_)
                  {
                     this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                     if(!_loc6_)
                     {
                        addr0075:
                        this._playfieldExpansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
                        if(!(_loc6_ && _loc3_))
                        {
                           addr0096:
                           this._restrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
                        }
                        addr00a8:
                        var _loc3_:FilePreloadServiceProxy = facade.retrieveProxy(FilePreloadServiceProxy.NAME) as FilePreloadServiceProxy;
                        var _loc4_:FileRuntimeLoadServiceProxy = facade.retrieveProxy(FileRuntimeLoadServiceProxy.NAME) as FileRuntimeLoadServiceProxy;
                        var _loc5_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                        if(!(_loc6_ && Boolean(this)))
                        {
                           this._factory = new GameObjectFactory(_loc3_.service,_loc4_.service,_loc5_.config.tags);
                           if(!(_loc6_ && Boolean(param2)))
                           {
                              this._expansionGrounds = new Vector.<BgPrimitive>();
                              if(_loc7_)
                              {
                                 this._restrictionGridView = new RestrictionGridView(this._playfieldProxy.tileSize,this._playfieldProxy.maxUsablePlayfieldSize);
                                 if(!(_loc6_ && Boolean(param1)))
                                 {
                                    this._groundGroup = new IsoGroup();
                                    if(!_loc6_)
                                    {
                                       §§push(this._groundGroup);
                                       if(_loc7_ || Boolean(param1))
                                       {
                                          §§pop().container.cacheAsBitmap = true;
                                          if(_loc7_ || Boolean(param1))
                                          {
                                             addr0188:
                                             §§push(this._groundGroup);
                                             if(_loc7_)
                                             {
                                                §§pop().container.mouseEnabled = true;
                                                if(_loc7_ || Boolean(param2))
                                                {
                                                   addr01b8:
                                                   this._groundGroup.container.mouseChildren = true;
                                                   if(!(_loc6_ && Boolean(param2)))
                                                   {
                                                      this._temporaryGroup = new IsoGroup();
                                                      if(!(_loc6_ && Boolean(_loc3_)))
                                                      {
                                                         §§push(this._temporaryGroup);
                                                         if(_loc7_ || Boolean(param1))
                                                         {
                                                            §§pop().container.cacheAsBitmap = true;
                                                            if(_loc7_ || Boolean(param1))
                                                            {
                                                               §§push(this._temporaryGroup);
                                                               if(!(_loc6_ && Boolean(_loc3_)))
                                                               {
                                                                  addr021f:
                                                                  §§pop().container.mouseEnabled = false;
                                                                  if(_loc7_)
                                                                  {
                                                                     addr0230:
                                                                     this._temporaryGroup.container.mouseChildren = false;
                                                                     if(_loc7_ || Boolean(param1))
                                                                     {
                                                                        addr0245:
                                                                        this._pierGroup = new SortedIsoGroup();
                                                                        if(_loc7_ || Boolean(param1))
                                                                        {
                                                                           addr025e:
                                                                           §§push(this._pierGroup);
                                                                           if(_loc7_ || Boolean(_loc3_))
                                                                           {
                                                                              §§pop().container.cacheAsBitmap = true;
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr027d:
                                                                                 §§push(this._pierGroup);
                                                                                 if(!(_loc6_ && Boolean(param2)))
                                                                                 {
                                                                                    addr028f:
                                                                                    §§pop().container.mouseEnabled = true;
                                                                                    if(_loc7_ || Boolean(param1))
                                                                                    {
                                                                                       addr02a8:
                                                                                       this._pierGroup.container.mouseChildren = true;
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          this._itemPlacementPreviewGrid = new PlaneGridView();
                                                                                          if(!(_loc6_ && Boolean(param1)))
                                                                                          {
                                                                                             §§goto(addr02ce);
                                                                                          }
                                                                                          §§goto(addr02fe);
                                                                                       }
                                                                                       §§goto(addr0345);
                                                                                    }
                                                                                    §§goto(addr036f);
                                                                                 }
                                                                                 §§goto(addr02a8);
                                                                              }
                                                                              addr02ce:
                                                                              this._restrictionGroup = new IsoGroup();
                                                                              if(!(_loc6_ && Boolean(param1)))
                                                                              {
                                                                                 addr02e7:
                                                                                 §§push(this._restrictionGroup);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§pop().container.mouseEnabled = false;
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr02fe:
                                                                                       §§push(this._restrictionGroup);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§pop().container.mouseChildren = false;
                                                                                          if(_loc7_ || Boolean(param2))
                                                                                          {
                                                                                             addr0321:
                                                                                             this._restrictionGroup.addChild(this._restrictionGridView);
                                                                                             if(_loc7_ || Boolean(param2))
                                                                                             {
                                                                                                addr0345:
                                                                                                this._fieldGridGroup = new IsoGroup();
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   this._inactiveFieldPartsGroup = new IsoGroup();
                                                                                                   if(!(_loc6_ && Boolean(param2)))
                                                                                                   {
                                                                                                      addr036f:
                                                                                                      this.drawFieldGrid();
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         addr037a:
                                                                                                         this.addIsoGroups();
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0380);
                                                                                                }
                                                                                                §§goto(addr036f);
                                                                                             }
                                                                                             §§goto(addr037a);
                                                                                          }
                                                                                          §§goto(addr0345);
                                                                                       }
                                                                                       §§goto(addr0321);
                                                                                    }
                                                                                    §§goto(addr037a);
                                                                                 }
                                                                                 §§goto(addr0321);
                                                                              }
                                                                              addr0380:
                                                                              return;
                                                                           }
                                                                           §§goto(addr028f);
                                                                        }
                                                                        §§goto(addr02fe);
                                                                     }
                                                                     §§goto(addr0345);
                                                                  }
                                                                  §§goto(addr02e7);
                                                               }
                                                               §§goto(addr0230);
                                                            }
                                                            §§goto(addr02e7);
                                                         }
                                                         §§goto(addr021f);
                                                      }
                                                      §§goto(addr0245);
                                                   }
                                                   §§goto(addr037a);
                                                }
                                                §§goto(addr036f);
                                             }
                                             §§goto(addr01b8);
                                          }
                                          §§goto(addr025e);
                                       }
                                       §§goto(addr01b8);
                                    }
                                    §§goto(addr025e);
                                 }
                                 §§goto(addr027d);
                              }
                              §§goto(addr0188);
                           }
                           §§goto(addr025e);
                        }
                        §§goto(addr0245);
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr00a8);
            }
         }
         §§goto(addr0075);
      }
      
      private function drawFieldGrid() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:ExpansionFieldObjectVo = null;
         var _loc2_:IsoRectangle = null;
         if(_loc5_ || Boolean(_loc2_))
         {
            this._fieldGridGroup.removeAllChildren();
         }
         var _loc3_:int = 0;
         for each(_loc1_ in this._playfieldProxy.playfieldDTO.expansions)
         {
            _loc2_ = new IsoRectangle();
            if(_loc5_ || Boolean(_loc2_))
            {
               _loc2_.stroke = new Stroke(0,0,0);
               if(!_loc6_)
               {
                  _loc2_.fill = new BitmapFill(new PlacementGridTexture(),IsoOrientation.XY,new Matrix(1,0,0,1,this._playfieldProxy.tileSize,this._playfieldProxy.tileSize));
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     _loc2_.setSize(_loc1_.matrix3dCoordinates.width * this._playfieldProxy.tileSize,_loc1_.matrix3dCoordinates.height * this._playfieldProxy.tileSize,0);
                     if(!_loc6_)
                     {
                        addr00f6:
                        _loc2_.moveTo(_loc1_.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc1_.matrix3dCoordinates.y * this._playfieldProxy.tileSize,0);
                        if(!(_loc6_ && Boolean(_loc1_)))
                        {
                           _loc2_.container.mouseChildren = false;
                           if(!(_loc6_ && Boolean(_loc1_)))
                           {
                              addr013d:
                              _loc2_.container.mouseEnabled = false;
                              if(!(_loc5_ || Boolean(this)))
                              {
                                 continue;
                              }
                           }
                           this._fieldGridGroup.addChild(_loc2_);
                        }
                     }
                  }
                  continue;
               }
               §§goto(addr013d);
            }
            §§goto(addr00f6);
         }
         if(_loc5_)
         {
            this._fieldGridGroup.container.visible = this._gridProxy.tileGridVisiblity;
         }
      }
      
      public function resetGroups() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._inactiveFieldPartsGroup.removeAllChildren();
            if(!(_loc2_ && _loc1_))
            {
               addr0034:
               this._groundGroup.removeAllChildren();
               if(_loc1_)
               {
                  §§goto(addr0041);
               }
               §§goto(addr004e);
            }
            addr0041:
            this._temporaryGroup.removeAllChildren();
            if(_loc1_)
            {
               addr004e:
               this._pierGroup.reset();
            }
            return;
         }
         §§goto(addr0034);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.GENERATE_EXPANSION_GROUND,ApplicationNotificationConstants.GROUND_ITEMGRID_CHANGE_COLOR,ApplicationNotificationConstants.GROUND_REDRAW_GROUNDOBJECT,ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_MOVE,ApplicationNotificationConstants.GROUND_FIELD_GRID_VISIBILITY_CHANGED,ApplicationNotificationConstants.GROUND_ITEM_GRID_VISIBILITY_CHANGED,ApplicationNotificationConstants.GROUND_ITEM_GRID_MOVE,ApplicationNotificationConstants.GROUND_ITEM_GRID_RESIZE,ApplicationNotificationConstants.GROUND_ITEM_STATE_CHANGED,ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,ApplicationNotificationConstants.GROUND_MOVE_GROUND,ApplicationNotificationConstants.FIELD_ADD_TEMPORARY,ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,ApplicationNotificationConstants.RESTRICTION_GRID_NEW_SOURCE,ApplicationNotificationConstants.RESTRICTION_GRID_VISIBILITY_CHANGED,ApplicationNotificationConstants.FIELD_GENERATED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
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
         var _loc13_:* = param1.getName();
         if(!_loc15_)
         {
            §§push(ApplicationNotificationConstants.GENERATE_EXPANSION_GROUND);
            if(_loc16_ || Boolean(this))
            {
               §§push(_loc13_);
               if(!(_loc15_ && Boolean(param1)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc15_ && Boolean(_loc2_)))
                     {
                        §§push(0);
                        if(_loc16_)
                        {
                        }
                     }
                     else
                     {
                        addr08c0:
                        §§push(3);
                        if(_loc15_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.GROUND_ITEM_GRID_RESIZE);
                     if(_loc16_)
                     {
                        §§push(_loc13_);
                        if(_loc16_ || Boolean(_loc2_))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc15_ && Boolean(_loc2_)))
                              {
                                 addr0855:
                                 §§push(1);
                                 if(_loc16_ || Boolean(_loc3_))
                                 {
                                 }
                              }
                              else
                              {
                                 addr0aab:
                                 §§push(12);
                                 if(_loc16_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.GROUND_ITEM_GRID_VISIBILITY_CHANGED);
                              if(!_loc15_)
                              {
                                 §§push(_loc13_);
                                 if(_loc16_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc16_)
                                       {
                                          §§push(2);
                                          if(_loc15_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr08c0);
                                       }
                                    }
                                    else
                                    {
                                       §§push(ApplicationNotificationConstants.GROUND_ITEM_GRID_MOVE);
                                       if(!(_loc15_ && Boolean(_loc3_)))
                                       {
                                          §§push(_loc13_);
                                          if(_loc16_ || Boolean(_loc3_))
                                          {
                                             addr08b6:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc16_)
                                                {
                                                   §§goto(addr08c0);
                                                }
                                                else
                                                {
                                                   addr0a08:
                                                   §§push(9);
                                                   if(_loc15_ && Boolean(_loc3_))
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(ApplicationNotificationConstants.GROUND_ITEM_STATE_CHANGED);
                                                if(_loc16_)
                                                {
                                                   addr08d7:
                                                   §§push(_loc13_);
                                                   if(!(_loc15_ && Boolean(_loc3_)))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            §§push(4);
                                                            if(_loc15_ && Boolean(_loc2_))
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr0aec:
                                                            §§push(13);
                                                            if(_loc16_ || Boolean(param1))
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(ApplicationNotificationConstants.GROUND_ITEMGRID_CHANGE_COLOR);
                                                         if(_loc16_)
                                                         {
                                                            addr0911:
                                                            §§push(_loc13_);
                                                            if(_loc16_)
                                                            {
                                                               addr0919:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(5);
                                                                     if(_loc15_ && Boolean(_loc2_))
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0a82:
                                                                     §§push(11);
                                                                     if(_loc15_)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM);
                                                                  if(!_loc15_)
                                                                  {
                                                                     addr0942:
                                                                     §§push(_loc13_);
                                                                     if(_loc16_ || Boolean(_loc2_))
                                                                     {
                                                                        addr0952:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc15_ && Boolean(param1)))
                                                                           {
                                                                              §§push(6);
                                                                              if(_loc16_ || Boolean(_loc2_))
                                                                              {
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0b1d:
                                                                              §§push(14);
                                                                              if(_loc16_ || Boolean(_loc2_))
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(ApplicationNotificationConstants.FIELD_GENERATED);
                                                                           if(!_loc15_)
                                                                           {
                                                                              §§push(_loc13_);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 addr098b:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc15_ && Boolean(param1)))
                                                                                    {
                                                                                       §§push(7);
                                                                                       if(_loc16_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0a49:
                                                                                       §§push(10);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM);
                                                                                    if(!(_loc15_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       §§push(_loc13_);
                                                                                       if(_loc16_ || Boolean(this))
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                §§push(8);
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr0a08);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(ApplicationNotificationConstants.GROUND_FIELD_GRID_VISIBILITY_CHANGED);
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                addr09ee:
                                                                                                §§push(_loc13_);
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   addr09f6:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(!(_loc15_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§goto(addr0a08);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0b4b:
                                                                                                         §§push(15);
                                                                                                         if(_loc16_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr0b6b);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(ApplicationNotificationConstants.GROUND_REDRAW_GROUNDOBJECT);
                                                                                                      if(_loc16_ || Boolean(_loc2_))
                                                                                                      {
                                                                                                         addr0a2f:
                                                                                                         §§push(_loc13_);
                                                                                                         if(_loc16_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            addr0a3f:
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  §§goto(addr0a49);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr0aab);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(ApplicationNotificationConstants.GROUND_MOVE_GROUND);
                                                                                                               if(_loc16_ || Boolean(param1))
                                                                                                               {
                                                                                                                  addr0a68:
                                                                                                                  §§push(_loc13_);
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc15_ && Boolean(_loc3_)))
                                                                                                                        {
                                                                                                                           §§goto(addr0a82);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr0b4b);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(ApplicationNotificationConstants.FIELD_ADD_TEMPORARY);
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           addr0a99:
                                                                                                                           §§push(_loc13_);
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              if(§§pop() === §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr0aab);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr0b4b);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY);
                                                                                                                                 if(!(_loc15_ && Boolean(_loc3_)))
                                                                                                                                 {
                                                                                                                                    addr0aca:
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    if(_loc16_ || Boolean(param1))
                                                                                                                                    {
                                                                                                                                       addr0ada:
                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc15_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             §§goto(addr0aec);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr0b4b);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(ApplicationNotificationConstants.RESTRICTION_GRID_NEW_SOURCE);
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             addr0b0b:
                                                                                                                                             §§push(_loc13_);
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                addr0b13:
                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                {
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr0b1d);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr0b4b);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0b47);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0b4b);
                                                                                                                                             }
                                                                                                                                             addr0b47:
                                                                                                                                          }
                                                                                                                                          §§goto(addr0b45);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0b4b);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0b47);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0b0b);
                                                                                                                              }
                                                                                                                              §§goto(addr0b4b);
                                                                                                                           }
                                                                                                                           §§goto(addr0b13);
                                                                                                                        }
                                                                                                                        §§goto(addr0b45);
                                                                                                                     }
                                                                                                                     §§goto(addr0b4b);
                                                                                                                  }
                                                                                                                  §§goto(addr0ada);
                                                                                                               }
                                                                                                               addr0b45:
                                                                                                               if(ApplicationNotificationConstants.RESTRICTION_GRID_VISIBILITY_CHANGED === _loc13_)
                                                                                                               {
                                                                                                                  §§goto(addr0b4b);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(16);
                                                                                                               }
                                                                                                               §§goto(addr0b6b);
                                                                                                            }
                                                                                                            §§goto(addr0b6b);
                                                                                                         }
                                                                                                         §§goto(addr0b47);
                                                                                                      }
                                                                                                      §§goto(addr0a99);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0ada);
                                                                                             }
                                                                                             §§goto(addr0a68);
                                                                                          }
                                                                                          §§goto(addr0b6b);
                                                                                       }
                                                                                       §§goto(addr0ada);
                                                                                    }
                                                                                    §§goto(addr0b45);
                                                                                 }
                                                                                 §§goto(addr0b6b);
                                                                              }
                                                                              §§goto(addr09f6);
                                                                           }
                                                                           §§goto(addr0aca);
                                                                        }
                                                                        §§goto(addr0b6b);
                                                                     }
                                                                     §§goto(addr098b);
                                                                  }
                                                                  §§goto(addr0a2f);
                                                               }
                                                               §§goto(addr0b6b);
                                                            }
                                                            §§goto(addr0a3f);
                                                         }
                                                         §§goto(addr09ee);
                                                      }
                                                      §§goto(addr0b6b);
                                                   }
                                                   §§goto(addr0919);
                                                }
                                                §§goto(addr0911);
                                             }
                                             §§goto(addr0b6b);
                                          }
                                          §§goto(addr0ada);
                                       }
                                       §§goto(addr0942);
                                    }
                                    §§goto(addr0b6b);
                                 }
                                 §§goto(addr0952);
                              }
                              §§goto(addr0a68);
                           }
                           §§goto(addr0b6b);
                        }
                        §§goto(addr09f6);
                     }
                     §§goto(addr0a68);
                  }
                  addr0b6b:
                  switch(§§pop())
                  {
                     case 0:
                        _loc2_ = param1.getBody() as BgPrimitive;
                        if(_loc16_)
                        {
                           §§push(this._inactiveFieldPartsGroup);
                           if(!_loc15_)
                           {
                              §§pop().container.mouseEnabled = false;
                              if(_loc15_)
                              {
                                 break;
                              }
                              §§push(this._inactiveFieldPartsGroup);
                           }
                           §§pop().addChild(_loc2_);
                           if(_loc16_ || Boolean(_loc3_))
                           {
                              this._expansionGrounds.push(_loc2_);
                              if(_loc15_ && Boolean(this))
                              {
                              }
                           }
                           break;
                        }
                        addr035b:
                        _loc6_ = param1.getBody() as PlaneObject;
                        if(_loc16_)
                        {
                           this._groundGroup.removeChild(_loc6_);
                           if(!(_loc15_ && Boolean(param1)))
                           {
                              addr0386:
                              this._playfieldObjectsProxy.removeObjectFromObjectList(_loc6_);
                           }
                           addr0390:
                           §§push(param1.getBody() is ExpansionFieldObject);
                           if(!_loc15_)
                           {
                              addr039e:
                              if(§§pop())
                              {
                                 if(_loc15_ && Boolean(this))
                                 {
                                    break;
                                 }
                                 addr03b0:
                                 _loc7_ = ExpansionFieldObject(param1.getBody());
                                 if(_loc16_ || Boolean(this))
                                 {
                                    _loc13_ = 0;
                                    if(_loc16_)
                                    {
                                       for each(_loc8_ in this._expansionGrounds)
                                       {
                                          if(_loc8_.x == _loc7_.billboardObjectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize)
                                          {
                                             if(_loc16_ || Boolean(_loc3_))
                                             {
                                                if(_loc8_.y != _loc7_.billboardObjectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize)
                                                {
                                                   continue;
                                                }
                                                if(_loc15_)
                                                {
                                                   continue;
                                                }
                                             }
                                             this._inactiveFieldPartsGroup.removeChild(_loc8_);
                                          }
                                       }
                                    }
                                    if(!_loc15_)
                                    {
                                       addr044e:
                                       this.drawFieldGrid();
                                    }
                                    addr0453:
                                    §§push(param1.getBody() is PierObject);
                                    if(!_loc15_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc16_ || Boolean(param1))
                                          {
                                             addr0473:
                                             _loc9_ = param1.getBody() as PierObject;
                                             if(!(_loc15_ && Boolean(this)))
                                             {
                                                this._pierGroup.removeChild(_loc9_);
                                                if(_loc16_ || Boolean(_loc3_))
                                                {
                                                   this._playfieldObjectsProxy.removeObjectFromObjectList(_loc9_);
                                                }
                                             }
                                             break;
                                          }
                                          addr077f:
                                          §§push(this._restrictionGridView);
                                          if(_loc16_ || Boolean(_loc2_))
                                          {
                                             addr0791:
                                             §§push(this._restrictionProxy);
                                             if(_loc16_)
                                             {
                                                §§pop().setSource(§§pop().restrictionGridSource);
                                                if(_loc16_)
                                                {
                                                   addr07a9:
                                                   this.createRestrictionMatrixAndDrawFieldGrid();
                                                   if(_loc16_ || Boolean(this))
                                                   {
                                                   }
                                                }
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             addr07c6:
                                             §§push(this._restrictionProxy);
                                          }
                                          §§pop().visible = §§pop().restrictionGridVisibility;
                                       }
                                       break;
                                    }
                                    addr04ee:
                                    if(!§§pop())
                                    {
                                       break;
                                    }
                                    if(_loc16_)
                                    {
                                       addr04f8:
                                       (param1.getBody() as PlaneObject).redraw();
                                       if(_loc15_)
                                       {
                                       }
                                       break;
                                    }
                                    addr05ba:
                                    _loc11_ = param1.getBody() as IPlaneObject;
                                    if(_loc16_ || Boolean(_loc3_))
                                    {
                                       §§push(this._temporaryGroup);
                                       if(!(_loc15_ && Boolean(this)))
                                       {
                                          §§pop().container.mouseEnabled = false;
                                          if(!(_loc15_ && Boolean(_loc3_)))
                                          {
                                             §§push(this._temporaryGroup);
                                             if(!_loc15_)
                                             {
                                                §§pop().container.mouseChildren = false;
                                                if(!(_loc16_ || Boolean(_loc2_)))
                                                {
                                                   break;
                                                }
                                                if(_loc11_ is PierObject)
                                                {
                                                   if(_loc16_)
                                                   {
                                                      addr062b:
                                                      _loc11_.moveTo(_loc11_.objectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc11_.objectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,1);
                                                      if(!(_loc16_ || Boolean(_loc2_)))
                                                      {
                                                         break;
                                                      }
                                                      §§push(this._temporaryGroup);
                                                      if(_loc16_)
                                                      {
                                                         addr066f:
                                                         §§pop().addChild(_loc11_ as PierObject);
                                                         if(_loc15_)
                                                         {
                                                         }
                                                         break;
                                                      }
                                                      addr0687:
                                                      §§pop().addChild(_loc11_ as IsoRectangle);
                                                      if(_loc15_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   addr0697:
                                                   (_loc11_ as PlaneObject).fill = (_loc11_ as PlaneObject).standardFill;
                                                   break;
                                                }
                                                §§push(this._temporaryGroup);
                                             }
                                             §§goto(addr0687);
                                          }
                                          §§goto(addr062b);
                                       }
                                       §§goto(addr066f);
                                    }
                                    §§goto(addr0697);
                                 }
                                 §§goto(addr044e);
                              }
                              §§goto(addr0453);
                           }
                           §§goto(addr04ee);
                        }
                        §§goto(addr0386);
                        break;
                     case 1:
                        §§push(this._itemPlacementPreviewGrid);
                        if(_loc16_ || Boolean(_loc2_))
                        {
                           §§push(this._gridProxy);
                           if(_loc16_)
                           {
                              §§push(§§pop().selectedCuboid);
                              if(_loc16_ || Boolean(_loc3_))
                              {
                                 §§pop().setGridSize(§§pop().width,this._gridProxy.selectedCuboid.height,this._playfieldProxy.tileSize);
                                 if(_loc15_ && Boolean(param1))
                                 {
                                 }
                                 break;
                              }
                           }
                           else
                           {
                              addr014f:
                              §§push(§§pop().selectedCuboid);
                           }
                           §§pop().moveTo(§§pop().x * this._playfieldProxy.tileSize,this._gridProxy.selectedCuboid.y * this._playfieldProxy.tileSize,1);
                           if(_loc16_ || Boolean(param1))
                           {
                              break;
                           }
                           addr06c1:
                           _loc12_ = param1.getBody() as IPlaneObject;
                           if(_loc12_ is IsoRectangle)
                           {
                              if(_loc15_ && Boolean(param1))
                              {
                                 break;
                              }
                              §§push(this._temporaryGroup);
                              if(_loc16_ || Boolean(_loc3_))
                              {
                                 §§pop().removeChild(_loc12_ as IsoRectangle);
                                 if(!_loc15_)
                                 {
                                    addr072d:
                                    §§push(this._temporaryGroup);
                                    if(_loc16_ || Boolean(param1))
                                    {
                                       addr073f:
                                       §§pop().container.mouseEnabled = true;
                                       if(!_loc16_)
                                       {
                                          break;
                                       }
                                       addr074c:
                                       §§push(this._temporaryGroup);
                                    }
                                    §§pop().container.mouseChildren = true;
                                    break;
                                 }
                                 §§goto(addr074c);
                              }
                              else
                              {
                                 addr071d:
                                 §§pop().removeChild(_loc12_ as SpriteObject3d);
                                 if(!_loc16_)
                                 {
                                    break;
                                 }
                              }
                              §§goto(addr072d);
                           }
                           else
                           {
                              §§push(this._temporaryGroup);
                              if(!(_loc15_ && Boolean(param1)))
                              {
                                 §§goto(addr071d);
                              }
                           }
                           §§goto(addr073f);
                        }
                        else
                        {
                           addr0208:
                           §§pop().color = uint(param1.getBody());
                           if(_loc16_ || Boolean(this))
                           {
                              break;
                           }
                           §§goto(addr07a9);
                        }
                        break;
                     case 2:
                        §§push(this._itemPlacementPreviewGrid);
                        if(!(_loc15_ && Boolean(_loc3_)))
                        {
                           §§push(this._gridProxy);
                           if(_loc16_ || Boolean(_loc3_))
                           {
                              §§pop().visible = §§pop().itemGridVisiblity;
                              if(!_loc15_)
                              {
                                 break;
                              }
                              §§goto(addr0473);
                           }
                        }
                        else
                        {
                           addr014b:
                           §§push(this._gridProxy);
                        }
                        §§goto(addr014f);
                     case 3:
                        §§push(this._itemPlacementPreviewGrid);
                        if(!_loc15_)
                        {
                           §§goto(addr014b);
                        }
                        else
                        {
                           §§goto(addr0208);
                        }
                     case 4:
                        §§push(this._gridProxy.selectedRectangleIsFree);
                        if(_loc16_)
                        {
                           if(§§pop())
                           {
                              if(_loc16_)
                              {
                                 §§push(this._itemPlacementPreviewGrid);
                                 if(_loc16_ || Boolean(this))
                                 {
                                    §§push(65280);
                                    if(_loc16_ || Boolean(this))
                                    {
                                       §§pop().color = §§pop();
                                       if(!(_loc15_ && Boolean(_loc2_)))
                                       {
                                          break;
                                       }
                                       addr052f:
                                       _loc10_ = IPlaneObject(param1.getBody());
                                       _loc10_.moveTo(_loc10_.objectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc10_.objectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,0);
                                       if(!(_loc15_ && Boolean(_loc2_)))
                                       {
                                          _loc10_.container.visible = true;
                                       }
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    addr01de:
                                    §§push(16711680);
                                 }
                                 §§pop().color = §§pop();
                                 if(_loc16_ || Boolean(_loc2_))
                                 {
                                 }
                                 break;
                              }
                              §§goto(addr035b);
                           }
                           else
                           {
                              §§push(this._itemPlacementPreviewGrid);
                              if(!_loc16_)
                              {
                                 §§goto(addr0208);
                              }
                           }
                           §§goto(addr01de);
                        }
                        else
                        {
                           addr051d:
                           if(!§§pop())
                           {
                              break;
                           }
                           if(!(_loc16_ || Boolean(_loc2_)))
                           {
                              break;
                           }
                        }
                        §§goto(addr052f);
                     case 5:
                        if(!param1.getBody())
                        {
                           break;
                        }
                        if(!_loc16_)
                        {
                           break;
                        }
                        §§goto(addr0208);
                        §§push(this._itemPlacementPreviewGrid);
                        break;
                     case 6:
                        §§push(param1.getBody() is PlaneObjectVo);
                        if(!(_loc15_ && Boolean(_loc3_)))
                        {
                           if(!§§pop())
                           {
                              break;
                           }
                           if(_loc16_ || Boolean(this))
                           {
                              _loc3_ = param1.getBody() as PlaneObjectVo;
                              _loc4_ = this._factory.getPlane(_loc3_);
                              if(!_loc15_)
                              {
                                 if(_loc3_ is PierObjectVo)
                                 {
                                    if(!(_loc15_ && Boolean(_loc2_)))
                                    {
                                       _loc5_ = _loc4_ as IObject3D;
                                       _loc5_.setSize(_loc3_.matrix3dCoordinates.width * this._playfieldProxy.tileSize,_loc3_.matrix3dCoordinates.height * this._playfieldProxy.tileSize,1);
                                       if(_loc16_)
                                       {
                                          _loc5_.moveTo(_loc3_.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc3_.matrix3dCoordinates.y * this._playfieldProxy.tileSize,1);
                                          if(_loc16_)
                                          {
                                             this._pierGroup.addChild(_loc4_ as PierObject);
                                             if(!(_loc16_ || Boolean(_loc3_)))
                                             {
                                                break;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    this._groundGroup.addChild(_loc4_ as IsoRectangle);
                                 }
                              }
                              this._playfieldObjectsProxy.addObjectToObjectList(_loc4_);
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr039e);
                        }
                        §§goto(addr04f8);
                     case 7:
                        this.drawFieldGrid();
                        if(_loc16_ || Boolean(_loc3_))
                        {
                           break;
                        }
                        §§goto(addr03b0);
                        break;
                     case 8:
                        §§push(param1.getBody() is PlaneObject);
                        if(_loc16_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc16_ || Boolean(_loc3_)))
                              {
                                 break;
                              }
                              §§goto(addr035b);
                           }
                           §§goto(addr0390);
                        }
                        §§goto(addr039e);
                     case 9:
                        this._fieldGridGroup.container.visible = this._gridProxy.tileGridVisiblity;
                        if(!(_loc15_ && Boolean(this)))
                        {
                           break;
                        }
                        §§goto(addr052f);
                        break;
                     case 10:
                        §§push(param1.getBody() is PlaneObject);
                        if(_loc16_ || Boolean(param1))
                        {
                           §§goto(addr04ee);
                        }
                        else
                        {
                           addr05a8:
                           if(!§§pop())
                           {
                              break;
                           }
                           if(!(_loc16_ || Boolean(this)))
                           {
                              break;
                           }
                        }
                        §§goto(addr05ba);
                     case 11:
                        §§push(param1.getBody() is IPlaneObject);
                        if(!_loc15_)
                        {
                           §§goto(addr051d);
                        }
                        else
                        {
                           §§goto(addr05a8);
                        }
                     case 12:
                        §§push(param1.getBody() is IPlaneObject);
                        if(!(_loc15_ && Boolean(_loc3_)))
                        {
                           §§goto(addr05a8);
                        }
                        else
                        {
                           addr06b7:
                           if(!§§pop())
                           {
                              break;
                           }
                           if(!_loc16_)
                           {
                              break;
                           }
                           §§goto(addr06c1);
                        }
                        break;
                     case 13:
                        §§goto(addr06b7);
                        §§push(param1.getBody() is IPlaneObject);
                     case 14:
                        §§push(this._restrictionGridView);
                        if(!_loc15_)
                        {
                           §§pop().maxSize = this._playfieldProxy.maxUsablePlayfieldSize;
                           if(!(_loc16_ || Boolean(_loc2_)))
                           {
                              break;
                           }
                           §§goto(addr077f);
                        }
                        §§goto(addr0791);
                     case 15:
                        §§goto(addr07c6);
                        §§push(this._restrictionGridView);
                  }
                  return;
               }
               §§goto(addr08b6);
            }
            §§goto(addr08d7);
         }
         §§goto(addr0855);
      }
      
      private function createRestrictionMatrixAndDrawFieldGrid() : void
      {
         var _temp_1:* = true;
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = _temp_1;
         var _loc3_:ConfigGroundRestrictionDTO = null;
         var _loc4_:ConfigGroundRestrictionDTO = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:ConfigGroundRestrictionShapeDTO = null;
         var _loc8_:Array = null;
         var _loc9_:ConfigGroundRestrictionShapePointDTO = null;
         var _loc10_:Polygon = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:IGameObjectVo = null;
         var _loc1_:Array = new Array();
         var _loc2_:Number = HorizionSettingsVo.playfieldYOffset(this._playfieldProxy.config.id);
         loop0:
         for each(_loc3_ in this._restrictionProxy.restrictionGridSource)
         {
            if(_loc21_ || Boolean(_loc3_))
            {
               §§push(_loc3_.whiteList);
               if(_loc21_)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(_loc21_ || Boolean(_loc1_))
                  {
                     §§push(0);
                     if(!_loc20_)
                     {
                        _loc5_ = §§pop();
                        if(_loc21_)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc5_);
                              loop4:
                              while(true)
                              {
                                 §§push(this._playfieldProxy);
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop().maxPlayFieldSize.width)
                                    {
                                       break loop0;
                                    }
                                    §§push(0);
                                    if(!(_loc20_ && Boolean(_loc2_)))
                                    {
                                       while(true)
                                       {
                                          _loc6_ = §§pop();
                                          if(!(_loc20_ && Boolean(_loc2_)))
                                          {
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                if(_loc20_ && Boolean(this))
                                                {
                                                   break loop5;
                                                }
                                             }
                                             break loop3;
                                             addr0138:
                                          }
                                          break loop4;
                                       }
                                       addr00d0:
                                    }
                                    while(true)
                                    {
                                       §§push(this._playfieldProxy);
                                       if(!(_loc20_ && Boolean(this)))
                                       {
                                          if(§§pop() >= §§pop().maxPlayFieldSize.height)
                                          {
                                             if(!_loc20_)
                                             {
                                                while(true)
                                                {
                                                   _loc5_++;
                                                   if(!_loc20_)
                                                   {
                                                      break loop4;
                                                   }
                                                   break;
                                                }
                                                break loop0;
                                                addr0169:
                                             }
                                             break loop4;
                                          }
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    break loop3;
                                 }
                              }
                           }
                           §§push(this.isOutsideActivePlayfield(new Point(_loc5_,_loc6_)));
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(_loc21_ || Boolean(_loc2_))
                                 {
                                    while(true)
                                    {
                                       this._restrictionGridView.addTile(_loc5_,_loc6_ - _loc2_,RestrictionGridView.RED);
                                       if(_loc21_ || Boolean(_loc3_))
                                       {
                                          while(true)
                                          {
                                             _loc6_++;
                                             if(_loc21_ || Boolean(this))
                                             {
                                                §§goto(addr0138);
                                             }
                                             §§goto(addr0171);
                                          }
                                          addr0128:
                                       }
                                       §§goto(addr0169);
                                    }
                                    addr0106:
                                 }
                                 §§goto(addr0171);
                              }
                              §§goto(addr0128);
                              §§push(this.isOutsideActivePlayfield(new Point(_loc5_,_loc6_)));
                           }
                           addr0171:
                           break;
                           addr00f4:
                        }
                        §§goto(addr0106);
                     }
                     §§goto(addr00d0);
                  }
                  §§goto(addr0106);
               }
               §§goto(addr00f4);
            }
            §§goto(addr0138);
         }
         if(_loc21_ || Boolean(_loc3_))
         {
            if(!_loc20_)
            {
               var _loc14_:int = 0;
               if(!(_loc20_ && Boolean(_loc2_)))
               {
                  for each(_loc4_ in this._restrictionProxy.restrictionGridSource)
                  {
                     if(_loc21_)
                     {
                        var _loc16_:int = 0;
                        if(!_loc20_)
                        {
                           loop9:
                           for each(_loc7_ in _loc4_.configGroundRestrictionShapes)
                           {
                              _loc8_ = new Array();
                              if(!(_loc20_ && Boolean(_loc1_)))
                              {
                                 var _loc18_:int = 0;
                                 if(_loc21_)
                                 {
                                    for each(_loc9_ in _loc7_.shapePoints)
                                    {
                                       if(!(_loc20_ && Boolean(_loc2_)))
                                       {
                                          _loc8_.push(_loc9_);
                                       }
                                    }
                                 }
                                 if(!(_loc20_ && Boolean(_loc3_)))
                                 {
                                    addr025b:
                                    _loc8_.sortOn(["shapePosition"],Array.NUMERIC);
                                 }
                                 _loc10_ = new Polygon(_loc8_);
                                 if(!(_loc20_ && Boolean(_loc2_)))
                                 {
                                    §§push(0);
                                    if(_loc21_ || Boolean(this))
                                    {
                                       _loc11_ = §§pop();
                                       if(!(_loc20_ && Boolean(_loc1_)))
                                       {
                                          while(true)
                                          {
                                             §§push(_loc11_);
                                             addr0782:
                                             loop18:
                                             while(true)
                                             {
                                                §§push(this._playfieldProxy);
                                                addr0786:
                                                loop17:
                                                while(§§pop() < §§pop().maxPlayFieldSize.width)
                                                {
                                                   if(!_loc1_[_loc11_])
                                                   {
                                                      if(_loc21_ || Boolean(this))
                                                      {
                                                         _loc1_[_loc11_] = new Array();
                                                         if(_loc21_ || Boolean(_loc3_))
                                                         {
                                                            addr02dd:
                                                            §§push(0);
                                                            if(_loc20_)
                                                            {
                                                               continue loop18;
                                                            }
                                                            _loc12_ = §§pop();
                                                            if(!(_loc20_ && Boolean(_loc1_)))
                                                            {
                                                               break;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         _loc1_[_loc11_][_loc12_].blacklist = _loc4_.blackList;
                                                         if(_loc21_ || Boolean(_loc1_))
                                                         {
                                                            while(true)
                                                            {
                                                               _loc1_[_loc11_][_loc12_].whitelist = !_loc4_.blackList;
                                                               if(!(_loc20_ && Boolean(_loc3_)))
                                                               {
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     _loc1_[_loc11_][_loc12_].normal = false;
                                                                     if(_loc21_ || Boolean(_loc1_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc12_++;
                                                                           if(_loc21_)
                                                                           {
                                                                              break loop17;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop9;
                                                                        addr0737:
                                                                     }
                                                                  }
                                                                  addr0719:
                                                               }
                                                               addr0770:
                                                               while(true)
                                                               {
                                                                  _loc11_++;
                                                                  if(_loc20_ && Boolean(_loc1_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  break loop18;
                                                               }
                                                               continue loop9;
                                                            }
                                                            addr06f6:
                                                         }
                                                         §§goto(addr0719);
                                                      }
                                                      addr06d4:
                                                   }
                                                   §§goto(addr02dd);
                                                   continue loop18;
                                                }
                                                continue loop9;
                                             }
                                          }
                                          addr0780:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc12_);
                                          if(!(_loc20_ && Boolean(_loc2_)))
                                          {
                                             §§push(this._playfieldProxy);
                                             if(_loc21_)
                                             {
                                                if(§§pop() >= §§pop().maxPlayFieldSize.height)
                                                {
                                                   if(_loc21_ || Boolean(_loc2_))
                                                   {
                                                      §§goto(addr0770);
                                                   }
                                                   §§goto(addr0780);
                                                }
                                                else
                                                {
                                                   if(!_loc1_[_loc11_][_loc12_])
                                                   {
                                                      if(!(_loc20_ && Boolean(_loc3_)))
                                                      {
                                                         _loc1_[_loc11_][_loc12_] = {
                                                            "normal":true,
                                                            "blacklist":false,
                                                            "whitelist":false
                                                         };
                                                         if(_loc21_)
                                                         {
                                                            addr0336:
                                                            §§push(_loc10_.containsPoint(_loc11_,_loc12_));
                                                            if(_loc21_ || Boolean(_loc2_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc20_)
                                                                  {
                                                                     §§push(this.isOutsideActivePlayfield(new Point(_loc11_,_loc12_)));
                                                                     if(!_loc20_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc20_ && Boolean(_loc1_)))
                                                                           {
                                                                              §§push(this._restrictionGridView);
                                                                              if(!(_loc20_ && Boolean(_loc1_)))
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(!(_loc20_ && Boolean(_loc1_)))
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(_loc21_ || Boolean(this))
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(RestrictionGridView.WHITE);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§pop().addTile(§§pop(),§§pop(),§§pop());
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr06d4);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr06ac:
                                                                                                §§pop().addTile(§§pop(),§§pop(),§§pop());
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   §§goto(addr06d4);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0737);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr06ca:
                                                                                             §§pop().addTile(§§pop(),§§pop(),RestrictionGridView.GREEN);
                                                                                             addr06c4:
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr06d4);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0699:
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             addr06a0:
                                                                                             §§push(RestrictionGridView.RED);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§goto(addr06ac);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr06ca);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr06c4);
                                                                                          }
                                                                                          §§goto(addr06ca);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0692:
                                                                                       §§push(_loc2_);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§goto(addr0699);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr06c3:
                                                                                          §§push(§§pop() - §§pop());
                                                                                       }
                                                                                       §§goto(addr06c4);
                                                                                    }
                                                                                    §§goto(addr0699);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr04a0:
                                                                                    §§push(_loc12_);
                                                                                    if(_loc21_ || Boolean(_loc2_))
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc21_ || Boolean(_loc3_))
                                                                                          {
                                                                                             §§push(RestrictionGridView.RED);
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                §§pop().addTile(§§pop(),§§pop(),§§pop());
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr06ca);
                                                                                             }
                                                                                             §§goto(addr06d4);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr06c4);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0511:
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(RestrictionGridView.GREEN);
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                §§pop().addTile(§§pop(),§§pop(),§§pop());
                                                                                                if(_loc21_ || Boolean(_loc2_))
                                                                                                {
                                                                                                   §§goto(addr06d4);
                                                                                                }
                                                                                                §§goto(addr0719);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr06ac);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr06a0);
                                                                                          }
                                                                                          §§goto(addr06ac);
                                                                                       }
                                                                                       §§goto(addr06ca);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr0692);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0692);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0490:
                                                                                 §§push(_loc11_);
                                                                                 if(_loc21_ || Boolean(this))
                                                                                 {
                                                                                    §§goto(addr04a0);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr068a:
                                                                                    §§push(_loc12_);
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       §§goto(addr0692);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr06c2:
                                                                                       §§push(_loc2_);
                                                                                    }
                                                                                    §§goto(addr06c3);
                                                                                 }
                                                                              }
                                                                              §§goto(addr04a0);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this._playfieldObjectsProxy);
                                                                           if(!(_loc20_ && Boolean(_loc3_)))
                                                                           {
                                                                              §§push(§§pop().isFree(new Cuboid(_loc11_,_loc12_,1,1,1,2)));
                                                                              if(!(_loc20_ && Boolean(_loc2_)))
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       addr0425:
                                                                                       if(this._restrictionProxy.restrictionItem != null)
                                                                                       {
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(this._playfieldObjectsProxy);
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                §§push(§§pop().isOwnPosition(new Cuboid(_loc11_,_loc12_,1,1,1,2),this._restrictionProxy.restrictionItem));
                                                                                                if(_loc21_ || Boolean(_loc2_))
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc21_ || Boolean(this))
                                                                                                      {
                                                                                                         addr047e:
                                                                                                         §§push(this._restrictionGridView);
                                                                                                         if(!(_loc20_ && Boolean(_loc2_)))
                                                                                                         {
                                                                                                            §§goto(addr0490);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr06c0:
                                                                                                            addr06be:
                                                                                                            §§push(_loc11_);
                                                                                                            §§push(_loc12_);
                                                                                                         }
                                                                                                         §§goto(addr06c2);
                                                                                                      }
                                                                                                      §§goto(addr0719);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(this._restrictionGridView);
                                                                                                      if(_loc21_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(_loc11_);
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            §§push(_loc12_);
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               if(_loc21_ || Boolean(_loc3_))
                                                                                                               {
                                                                                                                  §§goto(addr0511);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr0699);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr0692);
                                                                                                            }
                                                                                                            §§goto(addr0699);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr068a);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr067a:
                                                                                                         §§push(_loc11_);
                                                                                                         if(_loc21_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            §§goto(addr068a);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr06c0);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr068a);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr065e:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc21_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         §§push(this._restrictionGridView);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            §§goto(addr067a);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr06be);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr0780);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(this._restrictionGridView);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr06be);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr053e:
                                                                                                _loc13_ = §§pop().getGameObjectByCuboid(new Cuboid(_loc11_,_loc12_,1,1,1,2));
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   §§push(this._restrictionProxy.ignoreStreets);
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!(_loc20_ && Boolean(this)))
                                                                                                      {
                                                                                                         var _temp_53:* = §§pop();
                                                                                                         §§push(_temp_53);
                                                                                                         §§push(_temp_53);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  addr058c:
                                                                                                                  §§pop();
                                                                                                                  if(_loc21_ || Boolean(_loc1_))
                                                                                                                  {
                                                                                                                     §§push(_loc13_ is IPlaneObjectVo);
                                                                                                                     if(!(_loc20_ && Boolean(_loc2_)))
                                                                                                                     {
                                                                                                                        addr05af:
                                                                                                                        var _temp_56:* = §§pop();
                                                                                                                        addr05b0:
                                                                                                                        §§push(_temp_56);
                                                                                                                        if(_temp_56)
                                                                                                                        {
                                                                                                                           if(_loc21_ || Boolean(_loc3_))
                                                                                                                           {
                                                                                                                              addr05c2:
                                                                                                                              §§pop();
                                                                                                                              if(!(_loc20_ && Boolean(_loc2_)))
                                                                                                                              {
                                                                                                                                 addr05e5:
                                                                                                                                 §§push(_loc4_.blackList);
                                                                                                                                 if(!(_loc20_ && Boolean(_loc3_)))
                                                                                                                                 {
                                                                                                                                    addr05e4:
                                                                                                                                    §§push(!§§pop());
                                                                                                                                 }
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       addr05ef:
                                                                                                                                       §§push(this._restrictionGridView);
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          if(!_loc20_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             if(!(_loc20_ && Boolean(_loc3_)))
                                                                                                                                             {
                                                                                                                                                §§push(_loc2_);
                                                                                                                                                if(_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc21_)
                                                                                                                                                   {
                                                                                                                                                      §§push(RestrictionGridView.GREEN);
                                                                                                                                                      if(_loc21_ || Boolean(_loc2_))
                                                                                                                                                      {
                                                                                                                                                         §§pop().addTile(§§pop(),§§pop(),§§pop());
                                                                                                                                                         if(_loc21_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr0651:
                                                                                                                                                         §§pop().addTile(§§pop(),§§pop(),§§pop());
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr06d4);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr064b:
                                                                                                                                                      §§push(RestrictionGridView.RED);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0651);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr064a:
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                }
                                                                                                                                                §§goto(addr064b);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr0649:
                                                                                                                                                §§push(_loc2_);
                                                                                                                                             }
                                                                                                                                             §§goto(addr064a);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr0647:
                                                                                                                                             §§push(_loc12_);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0649);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr0645:
                                                                                                                                          §§push(_loc11_);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0647);
                                                                                                                                    }
                                                                                                                                    §§goto(addr06d4);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(this._restrictionGridView);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0645);
                                                                                                                              }
                                                                                                                              §§goto(addr06d4);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr05e5);
                                                                                                                     }
                                                                                                                     §§goto(addr05c2);
                                                                                                                  }
                                                                                                                  §§goto(addr05ef);
                                                                                                               }
                                                                                                               §§goto(addr05e4);
                                                                                                            }
                                                                                                            §§goto(addr05af);
                                                                                                         }
                                                                                                         §§goto(addr05b0);
                                                                                                      }
                                                                                                      §§goto(addr05af);
                                                                                                   }
                                                                                                   §§goto(addr058c);
                                                                                                }
                                                                                                §§goto(addr05ef);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr047e);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(this._playfieldObjectsProxy);
                                                                                       }
                                                                                       §§goto(addr053e);
                                                                                    }
                                                                                    §§goto(addr047e);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc4_.blackList);
                                                                                 }
                                                                              }
                                                                              §§goto(addr065e);
                                                                           }
                                                                           §§goto(addr053e);
                                                                        }
                                                                        §§goto(addr06d4);
                                                                     }
                                                                     §§goto(addr065e);
                                                                  }
                                                                  §§goto(addr06d4);
                                                               }
                                                               §§goto(addr0737);
                                                            }
                                                            §§goto(addr065e);
                                                         }
                                                         §§goto(addr0425);
                                                      }
                                                      §§goto(addr06f6);
                                                   }
                                                   §§goto(addr0336);
                                                }
                                             }
                                             §§goto(addr0786);
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr0782);
                                 }
                                 §§goto(addr0780);
                              }
                              §§goto(addr025b);
                           }
                        }
                     }
                  }
               }
               addr07a3:
               if(_loc21_ || Boolean(_loc1_))
               {
                  addr07c0:
                  §§push(this._restrictionProxy);
                  if(!_loc20_)
                  {
                     §§pop().restrictionMatrix = _loc1_;
                     if(_loc21_ || Boolean(this))
                     {
                        addr07e1:
                        this._restrictionProxy.restrictionItem = null;
                        addr07dd:
                     }
                     return;
                  }
                  §§goto(addr07e1);
               }
               §§goto(addr07dd);
            }
            §§goto(addr07c0);
         }
         §§goto(addr07a3);
      }
      
      private function isOutsideActivePlayfield(param1:Point) : Boolean
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:ExpansionFieldObjectVo = null;
         var _loc3_:Rectangle = null;
         var _loc4_:int = 0;
         var _loc5_:* = this._playfieldExpansionsProxy.validExpansionsInactive;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               _loc3_ = _loc2_.matrixCoordinates;
               if(!_loc7_)
               {
                  break;
               }
               if(_loc3_.containsPoint(param1))
               {
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      private function addIsoGroups() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.isoScene);
            if(!(_loc2_ && _loc1_))
            {
               §§pop().addChild(this._fieldGridGroup);
               if(!_loc2_)
               {
                  §§push(this.isoScene);
                  if(_loc1_ || Boolean(this))
                  {
                     §§pop().addChild(this._pierGroup);
                     if(_loc1_ || Boolean(this))
                     {
                        §§push(this.isoScene);
                        if(!_loc2_)
                        {
                           §§pop().addChild(this._groundGroup);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0081:
                              §§push(this.isoScene);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§pop().addChild(this._temporaryGroup);
                                 if(!_loc2_)
                                 {
                                    addr009f:
                                    §§push(this.isoScene);
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       §§goto(addr00ba);
                                    }
                                    §§goto(addr00d0);
                                 }
                                 §§goto(addr00dd);
                              }
                              §§goto(addr00ba);
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr00ba);
                     }
                     §§goto(addr00dd);
                  }
                  addr00ba:
                  §§pop().addChild(this._inactiveFieldPartsGroup);
                  if(!_loc2_)
                  {
                     §§push(this.isoScene);
                     if(!_loc2_)
                     {
                        addr00d0:
                        §§pop().addChild(this._itemPlacementPreviewGrid);
                        if(_loc1_)
                        {
                           addr00e1:
                           this.isoScene.addChild(this._restrictionGroup);
                           addr00dd:
                        }
                        §§goto(addr00e9);
                     }
                     §§goto(addr00e1);
                  }
                  §§goto(addr00e9);
               }
               §§goto(addr0081);
            }
            §§goto(addr00e1);
         }
         addr00e9:
      }
      
      private function get isoScene() : IsoScene
      {
         return IsoScene(viewComponent);
      }
   }
}

