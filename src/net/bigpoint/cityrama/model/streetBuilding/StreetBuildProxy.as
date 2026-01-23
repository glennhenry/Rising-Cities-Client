package net.bigpoint.cityrama.model.streetBuilding
{
   import com.baseoneonline.flash.geom.IntPoint;
   import com.greensock.TweenMax;
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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "StreetBuildProxy";
         if(_loc1_)
         {
            GROUND_FREE = 1;
            if(!(_loc2_ && _loc2_))
            {
               addr0040:
               GROUND_LOCKED = 2;
               if(_loc1_)
               {
                  addr004d:
                  GROUND_IRRELEVANT = -1;
               }
               §§goto(addr0055);
            }
            §§goto(addr004d);
         }
         addr0055:
         return;
      }
      §§goto(addr0040);
      
      private var _from:Cuboid;
      
      private var _to:Cuboid;
      
      private var _temporaryAdded:Vector.<IPlaneObject>;
      
      private var _streetObjectPool:Vector.<IPlaneObject>;
      
      private var _terrain:Terrain;
      
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this._temporaryAdded = new Vector.<IPlaneObject>();
            if(!(_loc2_ && Boolean(this)))
            {
               this._streetObjectPool = new Vector.<IPlaneObject>();
               addr0042:
               if(_loc1_ || _loc1_)
               {
                  this._terrain = new Terrain();
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr007f:
                     super(NAME);
                  }
                  return;
               }
            }
            §§goto(addr007f);
         }
         §§goto(addr0042);
      }
      
      private static function chooseTexture(param1:StreetObject) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2144
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private static function chooseColor(param1:IPlaneObject, param2:int, param3:Number, param4:Number) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!_loc5_)
         {
            if(!isPlaneBuildable(param2,param3,param4))
            {
               if(!(_loc5_ && StreetBuildProxy))
               {
                  TweenMax.to(param1.container,0,{"colorTransform":{
                     "tint":16711680,
                     "tintAmount":0.5
                  }});
                  if(_loc5_)
                  {
                  }
               }
            }
            else
            {
               TweenMax.to(param1.container,0,{"colorTransform":{
                  "tint":3407616,
                  "tintAmount":0.5
               }});
            }
         }
      }
      
      private static function isPlaneBuildable(param1:int, param2:Number, param3:Number) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param1 + 1);
         if(_loc5_ || Boolean(param1))
         {
            §§push(param3);
            if(_loc5_)
            {
               addr003c:
               §§push(§§pop() * §§pop());
               §§push(param2);
            }
            §§push(§§pop() > §§pop());
            if(_loc5_)
            {
               return !§§pop();
            }
         }
         §§goto(addr003c);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:FilePreloadServiceProxy = facade.retrieveProxy(FilePreloadServiceProxy.NAME) as FilePreloadServiceProxy;
         var _loc2_:FileRuntimeLoadServiceProxy = facade.retrieveProxy(FileRuntimeLoadServiceProxy.NAME) as FileRuntimeLoadServiceProxy;
         if(!(_loc4_ && Boolean(this)))
         {
            this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
            if(!_loc4_)
            {
               this._gameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
               if(_loc3_)
               {
                  this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
                  §§goto(addr007f);
               }
               §§goto(addr00ad);
            }
         }
         addr007f:
         if(!(_loc4_ && Boolean(this)))
         {
            addr00ad:
            this._factory = new GameObjectFactory(_loc1_.service,_loc2_.service,this._gameConfigProxy.config.tags);
         }
      }
      
      public function updateTerrain(param1:Vector.<ConfigGroundRestrictionDTO>) : void
      {
         var _temp_1:* = true;
         var _loc37_:Boolean = false;
         var _loc38_:Boolean = _temp_1;
         var _loc5_:ConfigGroundRestrictionDTO = null;
         var _loc6_:* = 0;
         var _loc11_:ConfigGroundRestrictionDTO = null;
         var _loc12_:IObject3D = null;
         var _loc13_:Vector.<String> = null;
         var _loc14_:* = 0;
         var _loc15_:ConfigGroundRestrictionShapeDTO = null;
         var _loc16_:Array = null;
         var _loc17_:ConfigGroundRestrictionShapePointDTO = null;
         var _loc18_:Polygon = null;
         var _loc19_:* = 0;
         var _loc20_:* = 0;
         var _loc21_:* = 0;
         var _loc22_:* = 0;
         var _loc23_:IMatrixObject3D = null;
         var _loc24_:* = 0;
         var _loc25_:* = 0;
         var _loc26_:* = 0;
         var _loc27_:* = 0;
         var _loc28_:* = 0;
         var _loc29_:ExpansionFieldObject = null;
         var _loc30_:* = 0;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:RestrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         if(!(_loc37_ && Boolean(this)))
         {
            this._terrain.tileSize = this._playfieldProxy.tileSize;
         }
         var _loc4_:* = false;
         for each(_loc5_ in param1)
         {
            if(!(_loc38_ || Boolean(this)))
            {
               continue;
            }
            §§push(_loc4_);
            if(!_loc37_)
            {
               §§push(§§pop());
               if(!_loc37_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(!_temp_4)
                  {
                     if(!(_loc37_ && Boolean(param1)))
                     {
                        §§pop();
                        if(_loc38_ || Boolean(param1))
                        {
                           §§push(_loc5_.whiteList);
                           if(!(_loc37_ && Boolean(param1)))
                           {
                              addr0128:
                              §§push(§§pop());
                              if(!(_loc37_ && Boolean(param1)))
                              {
                                 addr0137:
                                 §§push(§§pop());
                              }
                           }
                           _loc4_ = §§pop();
                        }
                        continue;
                     }
                  }
               }
               §§goto(addr0137);
            }
            §§goto(addr0128);
         }
         if(_loc38_ || Boolean(_loc3_))
         {
            §§push(GROUND_FREE);
            if(_loc38_)
            {
               §§push(§§pop());
               if(!_loc37_)
               {
                  _loc6_ = §§pop();
                  if(!_loc37_)
                  {
                     addr016b:
                     if(_loc4_)
                     {
                        if(!_loc37_)
                        {
                           addr0181:
                           §§push(GROUND_LOCKED);
                           if(!_loc37_)
                           {
                              addr0180:
                              §§push(§§pop());
                           }
                           _loc6_ = §§pop();
                        }
                     }
                  }
                  var _loc7_:Rectangle = this._playfieldProxy.maxPlayFieldSize;
                  var _loc8_:Rectangle = this._playfieldProxy.maxUsablePlayfieldSize;
                  var _loc9_:Array = [];
                  var _loc10_:int = 0;
                  if(_loc38_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc10_);
                        if(!(_loc38_ || Boolean(param1)))
                        {
                           break;
                        }
                        if(§§pop() >= _loc7_.height)
                        {
                           if(_loc38_)
                           {
                              addr0339:
                              §§push(0);
                              if(!_loc37_)
                              {
                                 break;
                              }
                              addr066c:
                              var _loc31_:* = §§pop();
                              if(!(_loc37_ && Boolean(this)))
                              {
                                 addr067c:
                                 loop23:
                                 for each(_loc12_ in _loc2_.objectList)
                                 {
                                    if(!(_loc12_ is IMatrixObject3D))
                                    {
                                       continue;
                                    }
                                    _loc23_ = _loc12_ as IMatrixObject3D;
                                    if(!_loc37_)
                                    {
                                       §§push(_loc12_ is IPlaneObject);
                                       if(_loc38_ || Boolean(_loc3_))
                                       {
                                          var _temp_14:* = §§pop();
                                          §§push(_temp_14);
                                          §§push(_temp_14);
                                          if(_loc38_ || Boolean(_loc2_))
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc37_ && Boolean(_loc3_)))
                                                {
                                                   §§pop();
                                                   if(_loc38_)
                                                   {
                                                      §§push(Boolean((_loc12_ as IPlaneObject).objectVo.configPlayfieldItemVo.destroyable));
                                                      if(_loc38_)
                                                      {
                                                         addr06fe:
                                                         var _temp_17:* = §§pop();
                                                         addr06ff:
                                                         §§push(_temp_17);
                                                         if(!_temp_17)
                                                         {
                                                            if(!_loc37_)
                                                            {
                                                               addr0709:
                                                               §§pop();
                                                               if(!_loc37_)
                                                               {
                                                                  §§push(_loc12_ is PlayfieldSwitchFieldObject);
                                                                  if(!(_loc37_ && Boolean(_loc3_)))
                                                                  {
                                                                     addr0724:
                                                                     if(§§pop())
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc37_ && Boolean(_loc3_)))
                                                                     {
                                                                        §§push(_loc23_.fieldMatrixObject3dVo);
                                                                        if(_loc38_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push(int(§§pop().matrixCoordinates.height));
                                                                           if(!(_loc37_ && Boolean(this)))
                                                                           {
                                                                              _loc24_ = §§pop();
                                                                              if(_loc38_ || Boolean(param1))
                                                                              {
                                                                                 §§push(_loc23_.fieldMatrixObject3dVo);
                                                                                 if(_loc38_)
                                                                                 {
                                                                                    addr0778:
                                                                                    §§push(int(§§pop().matrixCoordinates.width));
                                                                                    if(_loc38_ || Boolean(_loc3_))
                                                                                    {
                                                                                       _loc25_ = §§pop();
                                                                                       if(!(_loc38_ || Boolean(this)))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(_loc23_.fieldMatrixObject3dVo);
                                                                                       if(_loc38_ || Boolean(param1))
                                                                                       {
                                                                                          §§push(int(§§pop().matrixCoordinates.top));
                                                                                          if(_loc38_)
                                                                                          {
                                                                                             _loc26_ = §§pop();
                                                                                             if(!(_loc37_ && Boolean(this)))
                                                                                             {
                                                                                                addr07d0:
                                                                                                §§push(int(_loc23_.fieldMatrixObject3dVo.matrixCoordinates.left));
                                                                                                if(!_loc37_)
                                                                                                {
                                                                                                   _loc27_ = §§pop();
                                                                                                   if(_loc38_)
                                                                                                   {
                                                                                                      addr07ea:
                                                                                                      if(_loc12_ is ExpansionFieldObject)
                                                                                                      {
                                                                                                         if(_loc38_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            _loc29_ = _loc12_ as ExpansionFieldObject;
                                                                                                            §§push(int(_loc29_.billboardObjectVo.matrix3dCoordinates.height));
                                                                                                            if(!(_loc37_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               _loc24_ = §§pop();
                                                                                                               if(_loc38_)
                                                                                                               {
                                                                                                                  §§push(int(_loc29_.billboardObjectVo.matrix3dCoordinates.width));
                                                                                                                  if(_loc38_)
                                                                                                                  {
                                                                                                                     _loc25_ = §§pop();
                                                                                                                     if(_loc38_ || Boolean(this))
                                                                                                                     {
                                                                                                                        §§push(int(_loc29_.billboardObjectVo.matrix3dCoordinates.top));
                                                                                                                        if(_loc38_)
                                                                                                                        {
                                                                                                                           _loc26_ = §§pop();
                                                                                                                           if(_loc38_)
                                                                                                                           {
                                                                                                                              addr0868:
                                                                                                                              _loc27_ = _loc29_.billboardObjectVo.matrix3dCoordinates.left;
                                                                                                                              addr085e:
                                                                                                                           }
                                                                                                                           addr086a:
                                                                                                                           §§push(_loc26_);
                                                                                                                           if(_loc38_ || Boolean(param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc38_)
                                                                                                                              {
                                                                                                                                 addr0881:
                                                                                                                                 _loc28_ = §§pop();
                                                                                                                                 if(!(_loc38_ || Boolean(_loc2_)))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc28_);
                                                                                                                                    loop31:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc26_);
                                                                                                                                       loop29:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc24_);
                                                                                                                                          loop28:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             loop27:
                                                                                                                                             while(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                §§push(_loc27_);
                                                                                                                                                if(_loc38_ || Boolean(this))
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!_loc37_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc30_ = §§pop();
                                                                                                                                                            if(_loc37_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc30_);
                                                                                                                                                               if(_loc37_ && Boolean(_loc2_))
                                                                                                                                                               {
                                                                                                                                                                  break loop29;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr08ad:
                                                                                                                                                      }
                                                                                                                                                      addr08ef:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc27_);
                                                                                                                                                         if(_loc37_)
                                                                                                                                                         {
                                                                                                                                                            break loop28;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc25_);
                                                                                                                                                         if(!_loc38_)
                                                                                                                                                         {
                                                                                                                                                            continue loop28;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!(_loc38_ || Boolean(this)))
                                                                                                                                                         {
                                                                                                                                                            continue loop27;
                                                                                                                                                         }
                                                                                                                                                         if(§§pop() >= §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc37_ && Boolean(_loc2_)))
                                                                                                                                                            {
                                                                                                                                                               _loc28_++;
                                                                                                                                                               if(!(_loc38_ || Boolean(this)))
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            break loop31;
                                                                                                                                                         }
                                                                                                                                                         _loc9_[_loc28_][_loc30_] = GROUND_LOCKED;
                                                                                                                                                         if(_loc37_ && Boolean(this))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         _loc30_++;
                                                                                                                                                         if(!_loc38_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr08df);
                                                                                                                                                         addr08df:
                                                                                                                                                      }
                                                                                                                                                      continue loop23;
                                                                                                                                                   }
                                                                                                                                                   addr08a6:
                                                                                                                                                }
                                                                                                                                                §§goto(addr08ad);
                                                                                                                                             }
                                                                                                                                             continue loop23;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr0930:
                                                                                                                              }
                                                                                                                              §§goto(addr08a6);
                                                                                                                           }
                                                                                                                           §§goto(addr08ef);
                                                                                                                        }
                                                                                                                        §§goto(addr0868);
                                                                                                                     }
                                                                                                                     §§goto(addr085e);
                                                                                                                  }
                                                                                                                  §§goto(addr0868);
                                                                                                               }
                                                                                                               §§goto(addr086a);
                                                                                                            }
                                                                                                            §§goto(addr0868);
                                                                                                         }
                                                                                                         §§goto(addr08df);
                                                                                                      }
                                                                                                      §§goto(addr086a);
                                                                                                   }
                                                                                                   §§goto(addr0930);
                                                                                                }
                                                                                                §§goto(addr08ad);
                                                                                             }
                                                                                             §§goto(addr08df);
                                                                                          }
                                                                                          §§goto(addr0881);
                                                                                       }
                                                                                       §§goto(addr07d0);
                                                                                    }
                                                                                    §§goto(addr08ad);
                                                                                 }
                                                                                 §§goto(addr07d0);
                                                                              }
                                                                              §§goto(addr0930);
                                                                           }
                                                                           §§goto(addr0881);
                                                                        }
                                                                        §§goto(addr0778);
                                                                     }
                                                                     §§goto(addr0930);
                                                                  }
                                                                  §§goto(addr07ea);
                                                               }
                                                               §§goto(addr08df);
                                                            }
                                                            §§goto(addr07ea);
                                                         }
                                                         §§goto(addr0724);
                                                      }
                                                      §§goto(addr07ea);
                                                   }
                                                   §§goto(addr0930);
                                                }
                                                §§goto(addr0724);
                                             }
                                             §§goto(addr06fe);
                                          }
                                          §§goto(addr06ff);
                                       }
                                       §§goto(addr0709);
                                    }
                                    §§goto(addr08df);
                                 }
                                 addr0942:
                              }
                              addr0946:
                              _loc13_ = new Vector.<String>();
                              _loc13_.push("");
                              if(_loc38_)
                              {
                                 _loc13_.push("free");
                                 if(!(_loc37_ && Boolean(this)))
                                 {
                                    addr0986:
                                    _loc13_.push("locked");
                                    if(_loc38_ || Boolean(_loc3_))
                                    {
                                       this._terrain.setMatrix(_loc9_,_loc13_);
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr0986);
                              addr0944:
                           }
                           addr066a:
                           §§goto(addr066c);
                           §§push(0);
                        }
                        else
                        {
                           _loc9_[_loc10_] = [];
                           if(_loc38_ || Boolean(_loc2_))
                           {
                              §§push(0);
                              if(!(_loc37_ && Boolean(param1)))
                              {
                                 _loc14_ = §§pop();
                                 if(_loc38_)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc14_);
                                       if(_loc37_)
                                       {
                                          break loop1;
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          if(§§pop() >= _loc7_.width)
                                          {
                                             if(!_loc37_)
                                             {
                                                _loc10_++;
                                                if(_loc38_)
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr066a);
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc10_);
                                             if(_loc37_ && Boolean(_loc3_))
                                             {
                                                break loop1;
                                             }
                                             §§push(§§pop() < _loc8_.y);
                                             if(!_loc38_)
                                             {
                                                break;
                                             }
                                             var _temp_48:* = §§pop();
                                             §§push(_temp_48);
                                             §§push(_temp_48);
                                             if(!_loc37_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(!_loc37_)
                                                   {
                                                      §§pop();
                                                      if(!_loc37_)
                                                      {
                                                         §§push(_loc10_);
                                                         if(_loc37_ && Boolean(_loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop() >= _loc8_.y + _loc8_.height);
                                                         if(_loc38_ || Boolean(this))
                                                         {
                                                            addr023f:
                                                            var _temp_51:* = §§pop();
                                                            §§push(_temp_51);
                                                            §§push(_temp_51);
                                                            if(!(_loc37_ && Boolean(this)))
                                                            {
                                                               addr024e:
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc37_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc38_ || Boolean(param1))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc14_);
                                                                           if(!_loc37_)
                                                                           {
                                                                              §§push(§§pop() < _loc8_.x);
                                                                              if(_loc37_)
                                                                              {
                                                                                 break loop3;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 var _temp_54:* = §§pop();
                                                                                 §§push(_temp_54);
                                                                                 §§push(_temp_54);
                                                                                 addr027b:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       break loop3;
                                                                                    }
                                                                                    if(_loc37_)
                                                                                    {
                                                                                       break loop3;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc38_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc14_);
                                                                                             if(_loc38_ || Boolean(_loc2_))
                                                                                             {
                                                                                                §§push(§§pop() >= _loc8_.x + _loc8_.width);
                                                                                                break loop3;
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          addr028c:
                                                                                       }
                                                                                       addr02ed:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc14_++;
                                                                                          if(_loc38_ || Boolean(_loc3_))
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr066c);
                                                                           }
                                                                           §§goto(addr0946);
                                                                        }
                                                                        addr0267:
                                                                     }
                                                                     §§goto(addr02ed);
                                                                  }
                                                                  §§goto(addr0285);
                                                               }
                                                               §§goto(addr027a);
                                                            }
                                                            §§goto(addr027b);
                                                         }
                                                         §§goto(addr027a);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr0339);
                                                      }
                                                   }
                                                   §§goto(addr027a);
                                                }
                                                §§goto(addr023f);
                                             }
                                             §§goto(addr024e);
                                          }
                                          §§goto(addr0946);
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc37_)
                                             {
                                                _loc9_[_loc10_][_loc14_] = GROUND_LOCKED;
                                                if(_loc37_ && Boolean(_loc3_))
                                                {
                                                   break;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc9_[_loc10_][_loc14_] = _loc6_;
                                             if(_loc37_ && Boolean(_loc3_))
                                             {
                                                break;
                                             }
                                          }
                                          §§goto(addr02ed);
                                       }
                                    }
                                 }
                                 §§goto(addr0267);
                              }
                              §§goto(addr066c);
                           }
                           §§goto(addr028c);
                        }
                     }
                     _loc31_ = §§pop();
                     if(_loc38_)
                     {
                        var _loc32_:* = _loc3_.restrictionGridSource;
                        while(true)
                        {
                           §§push(§§hasnext(_loc32_,_loc31_));
                           if(!(_loc37_ && Boolean(param1)))
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc37_ && Boolean(_loc2_)))
                                 {
                                    if(_loc38_ || Boolean(param1))
                                    {
                                       if(_loc38_ || Boolean(_loc2_))
                                       {
                                          §§goto(addr066a);
                                       }
                                       §§goto(addr0946);
                                    }
                                    §§goto(addr0944);
                                 }
                                 §§goto(addr0942);
                              }
                              else
                              {
                                 _loc11_ = §§nextvalue(_loc31_,_loc32_);
                                 if(!(_loc37_ && Boolean(_loc3_)))
                                 {
                                    §§push(GROUND_IRRELEVANT);
                                    if(!(_loc37_ && Boolean(this)))
                                    {
                                       §§push(§§pop());
                                       if(_loc38_ || Boolean(this))
                                       {
                                          addr038d:
                                          _loc6_ = §§pop();
                                          addr038f:
                                          §§push(0);
                                       }
                                       for each(_loc5_ in param1)
                                       {
                                          if(_loc5_.groundType != _loc11_.groundType)
                                          {
                                             continue;
                                          }
                                          if(!(_loc38_ || Boolean(_loc3_)))
                                          {
                                             break;
                                          }
                                          §§push(_loc5_.whiteList);
                                          if(_loc38_ || Boolean(this))
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc37_ && Boolean(this)))
                                                {
                                                   §§push(GROUND_FREE);
                                                   if(_loc38_ || Boolean(_loc2_))
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc37_ && Boolean(this)))
                                                      {
                                                         _loc6_ = §§pop();
                                                         if(!_loc37_)
                                                         {
                                                            break;
                                                         }
                                                         addr0433:
                                                         addr0429:
                                                         §§push(GROUND_LOCKED);
                                                         if(_loc38_)
                                                         {
                                                            addr0432:
                                                            §§push(§§pop());
                                                         }
                                                         _loc6_ = §§pop();
                                                         break;
                                                      }
                                                      §§goto(addr0432);
                                                   }
                                                   §§goto(addr0433);
                                                }
                                             }
                                             else
                                             {
                                                addr0417:
                                                if(!_loc5_.blackList)
                                                {
                                                   break;
                                                }
                                                if(!(_loc38_ || Boolean(this)))
                                                {
                                                   break;
                                                }
                                             }
                                             §§goto(addr0429);
                                          }
                                          §§goto(addr0417);
                                       }
                                       if(_loc38_ || Boolean(_loc2_))
                                       {
                                          if(_loc37_ && Boolean(this))
                                          {
                                             continue;
                                          }
                                          §§push(_loc6_);
                                          if(!_loc37_)
                                          {
                                             if(§§pop() == GROUND_IRRELEVANT)
                                             {
                                                if(_loc37_)
                                                {
                                                }
                                                continue;
                                             }
                                             §§push(0);
                                          }
                                          var _loc33_:* = §§pop();
                                          if(!(_loc37_ && Boolean(_loc3_)))
                                          {
                                             for each(_loc15_ in _loc11_.configGroundRestrictionShapes)
                                             {
                                                _loc16_ = new Array();
                                                if(!(_loc37_ && Boolean(_loc3_)))
                                                {
                                                   var _loc35_:int = 0;
                                                   if(_loc38_)
                                                   {
                                                      for each(_loc17_ in _loc15_.shapePoints)
                                                      {
                                                         if(_loc38_ || Boolean(_loc3_))
                                                         {
                                                            _loc16_.push(_loc17_);
                                                         }
                                                      }
                                                   }
                                                   if(_loc38_ || Boolean(_loc3_))
                                                   {
                                                      _loc16_.sortOn(["shapePosition"],Array.NUMERIC);
                                                   }
                                                }
                                                _loc18_ = new Polygon(_loc16_);
                                                if(!_loc37_)
                                                {
                                                   §§push(int(_loc8_.x + _loc8_.width));
                                                   if(_loc38_)
                                                   {
                                                      _loc19_ = §§pop();
                                                      if(!(_loc37_ && Boolean(param1)))
                                                      {
                                                         §§push(int(_loc8_.y + _loc8_.height));
                                                         if(_loc38_)
                                                         {
                                                            _loc20_ = §§pop();
                                                            if(!_loc37_)
                                                            {
                                                               §§push(int(_loc8_.y));
                                                               if(!(_loc37_ && Boolean(_loc2_)))
                                                               {
                                                                  addr0585:
                                                                  _loc21_ = §§pop();
                                                                  if(_loc38_)
                                                                  {
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc21_);
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc20_);
                                                                           loop18:
                                                                           while(§§pop() < §§pop())
                                                                           {
                                                                              §§push(int(_loc8_.x));
                                                                              if(_loc38_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc22_ = §§pop();
                                                                                    if(_loc37_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc22_);
                                                                                       if(_loc37_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                    }
                                                                                    continue loop18;
                                                                                 }
                                                                                 break;
                                                                                 addr059d:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc19_);
                                                                                 if(!_loc38_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    if(_loc37_ && Boolean(_loc3_))
                                                                                    {
                                                                                       break loop18;
                                                                                    }
                                                                                    continue loop16;
                                                                                 }
                                                                                 if(_loc18_.containsPoint(_loc22_,_loc21_))
                                                                                 {
                                                                                    if(!(_loc37_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       _loc9_[_loc21_][_loc22_] = _loc6_;
                                                                                       if(!_loc37_)
                                                                                       {
                                                                                          do
                                                                                          {
                                                                                             _loc22_++;
                                                                                          }
                                                                                          while(_loc38_ || Boolean(param1));
                                                                                          
                                                                                          break loop18;
                                                                                          addr05da:
                                                                                       }
                                                                                       §§goto(addr05ea);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr05da);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue;
                                                                     addr0614:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc21_++;
                                                                     if(!_loc38_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr0614);
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr059d);
                                                            }
                                                            §§goto(addr05ea);
                                                         }
                                                         §§goto(addr059d);
                                                      }
                                                      §§goto(addr05ea);
                                                   }
                                                   §§goto(addr0585);
                                                }
                                                §§goto(addr05da);
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr038d);
                                 }
                                 §§goto(addr038f);
                              }
                           }
                           §§goto(addr093e);
                        }
                     }
                     §§goto(addr067c);
                  }
                  §§goto(addr0946);
               }
               §§goto(addr0180);
            }
            §§goto(addr0181);
         }
         §§goto(addr016b);
      }
      
      private function debugPrint(param1:Array) : void
      {
      }
      
      public function get isStartSet() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._from == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function setStart(param1:Cuboid) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  return;
               }
               addr0102:
               this.updateResources();
            }
            else
            {
               §§push(this._from);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() == null);
                  if(_loc3_ || Boolean(this))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                     if(_loc3_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr0068);
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr00a5);
                  }
                  addr0068:
                  §§pop();
                  if(!_loc2_)
                  {
                     §§push(this._from);
                     if(_loc3_)
                     {
                        §§push(§§pop().x == param1.x);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(!§§pop());
                           if(_loc3_ || Boolean(this))
                           {
                              var _temp_8:* = §§pop();
                              addr00a5:
                              §§push(_temp_8);
                              if(!_temp_8)
                              {
                                 if(!_loc2_)
                                 {
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       §§goto(addr00c4);
                                    }
                                    §§goto(addr00e3);
                                 }
                                 §§goto(addr00c3);
                              }
                           }
                           addr00c4:
                           §§goto(addr00b8);
                        }
                        §§goto(addr00c3);
                     }
                     addr00b8:
                     §§goto(addr00b4);
                  }
                  addr00b4:
                  §§push(this._from.y == param1.y);
                  if(!_loc2_)
                  {
                     addr00c3:
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        this._from = param1;
                        if(!_loc2_)
                        {
                           addr00e3:
                           this._to = null;
                           if(!_loc2_)
                           {
                              addr00ed:
                              if(this._configContainer)
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§goto(addr0102);
                                 }
                              }
                           }
                           §§goto(addr0108);
                        }
                     }
                     §§goto(addr00ed);
                  }
                  §§goto(addr0108);
               }
               §§goto(addr00b8);
            }
            addr0108:
            return;
         }
         §§goto(addr00ed);
      }
      
      public function setTo(param1:Cuboid) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(!param1)
            {
               if(!_loc3_)
               {
                  this._to = param1;
                  if(_loc2_)
                  {
                     return;
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr00d5);
            }
            else
            {
               §§push(this._to);
               if(!_loc3_)
               {
                  §§push(§§pop() == null);
                  if(!_loc3_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(_loc2_ || _loc3_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 §§push(this._to);
                                 if(_loc2_)
                                 {
                                    addr007e:
                                    §§push(§§pop().x == param1.x);
                                    if(!(_loc3_ && Boolean(param1)))
                                    {
                                       §§push(!§§pop());
                                       if(_loc2_)
                                       {
                                          §§goto(addr0097);
                                       }
                                       §§goto(addr00b6);
                                    }
                                    addr0097:
                                    var _temp_6:* = §§pop();
                                    addr0098:
                                    §§push(_temp_6);
                                    if(!_temp_6)
                                    {
                                       if(_loc2_)
                                       {
                                          addr00a1:
                                          §§pop();
                                          if(!_loc3_)
                                          {
                                             addr00a7:
                                             §§goto(addr00b7);
                                          }
                                          §§goto(addr00df);
                                       }
                                       §§goto(addr00b6);
                                    }
                                    addr00b7:
                                    §§goto(addr00ab);
                                 }
                                 addr00ab:
                                 §§push(this._to.y == param1.y);
                                 if(!_loc3_)
                                 {
                                    addr00b6:
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr00d5:
                                       this._to = param1;
                                       if(_loc2_)
                                       {
                                          addr00df:
                                          TweenMax.killDelayedCallsTo(this.updateStreet);
                                          if(_loc2_)
                                          {
                                             TweenMax.delayedCall(0.1,this.updateStreet);
                                          }
                                       }
                                       §§goto(addr00fc);
                                    }
                                    §§goto(addr00df);
                                 }
                                 addr00fc:
                                 return;
                              }
                              §§goto(addr00d5);
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr007e);
            }
         }
         §§goto(addr00d5);
      }
      
      private function updateStreet() : void
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc4_:IntPoint = null;
         var _loc5_:* = 0;
         var _loc6_:IPlaneObject = null;
         var _loc7_:IGameObjectVo = null;
         var _loc8_:StreetObject = null;
         var _loc9_:StreetObject = null;
         var _loc10_:StreetObject = null;
         if(!(_loc14_ && Boolean(this)))
         {
            §§push(this._from == null);
            if(!(_loc14_ && _loc3_))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(!_loc14_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc14_ && _loc3_))
                     {
                        §§pop();
                        if(!(_loc14_ && _loc2_))
                        {
                           §§push(this._to == null);
                           if(_loc13_ || _loc1_)
                           {
                              addr0099:
                              var _temp_7:* = §§pop();
                              addr009a:
                              §§push(_temp_7);
                              if(!_temp_7)
                              {
                                 if(_loc13_ || _loc1_)
                                 {
                                    §§pop();
                                    if(!(_loc14_ && _loc2_))
                                    {
                                       addr00c6:
                                       addr00bb:
                                       §§push(this._isAnimating);
                                       if(_loc13_)
                                       {
                                          addr00c5:
                                          §§push(§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc13_ || _loc3_)
                                          {
                                             §§goto(addr00d8);
                                          }
                                       }
                                       this.clearTemporary();
                                       var _loc1_:Vector.<IntPoint> = this._terrain.calculate2PointPath(new IntPoint(this._from.x,this._from.y),new IntPoint(this._to.x,this._to.y),"free");
                                       var _loc2_:FieldBuildProxy = facade.retrieveProxy(FieldBuildProxy.NAME) as FieldBuildProxy;
                                       var _loc3_:ConfigPlayfieldItemDTO = _loc2_.selectedConfig;
                                       if(!_loc14_)
                                       {
                                          if(_loc3_ != this._configContainer)
                                          {
                                             if(!_loc14_)
                                             {
                                                this.clearStreetPool();
                                                if(!_loc14_)
                                                {
                                                   this._configContainer = _loc3_;
                                                   if(!_loc14_)
                                                   {
                                                      addr0168:
                                                      this.updateResources();
                                                   }
                                                }
                                                addr016e:
                                                for each(_loc4_ in _loc1_)
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      if(this._streetObjectPool.length > 0)
                                                      {
                                                         addr0197:
                                                         _loc6_ = this._streetObjectPool.shift();
                                                         _loc6_.updateIndex(_loc4_.x,_loc4_.y);
                                                         if(!_loc14_)
                                                         {
                                                            _loc6_.moveTo(_loc4_.x * this._playfieldProxy.tileSize,_loc4_.y * this._playfieldProxy.tileSize,0);
                                                            if(!_loc13_)
                                                            {
                                                               continue;
                                                            }
                                                            _loc6_.presentation.visible = true;
                                                            if(!(_loc13_ || Boolean(_loc3_)))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         _loc6_.container.visible = true;
                                                         if(!_loc13_)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc7_ = ServerTagToClassSelector.getFieldObjectVoClassByTags(this._configContainer,new Cuboid(0,0,1,1,1,1),this._timerProxy,this._gameConfigProxy,this._playfieldProxy);
                                                         _loc6_ = this._factory.getPlane(_loc7_ as IPlaneObjectVo);
                                                         _loc6_.presentation.visible = false;
                                                         if(_loc13_ || Boolean(_loc3_))
                                                         {
                                                            _loc6_.container.visible = false;
                                                            if(_loc13_)
                                                            {
                                                               _loc6_.updateIndex(_loc4_.x,_loc4_.y);
                                                               if(!_loc14_)
                                                               {
                                                                  _loc6_.moveTo(_loc4_.x * this._playfieldProxy.tileSize,_loc4_.y * this._playfieldProxy.tileSize,0);
                                                                  if(!_loc14_)
                                                                  {
                                                                     addr02b0:
                                                                     facade.sendNotification(ApplicationNotificationConstants.FIELD_ADD_TEMPORARY,_loc6_);
                                                                     if(_loc13_ || Boolean(this))
                                                                     {
                                                                        addr02ca:
                                                                        TweenMax.to(_loc6_.presentation,0.1,{"visible":true});
                                                                        if(_loc13_)
                                                                        {
                                                                           addr02e2:
                                                                           TweenMax.to(_loc6_.container,0.1,{"visible":true});
                                                                        }
                                                                        addr02f4:
                                                                        this._temporaryAdded.push(_loc6_);
                                                                        continue;
                                                                     }
                                                                     §§goto(addr02e2);
                                                                  }
                                                                  §§goto(addr02f4);
                                                               }
                                                               §§goto(addr02b0);
                                                            }
                                                            §§goto(addr02ca);
                                                         }
                                                      }
                                                      §§goto(addr02f4);
                                                   }
                                                   §§goto(addr0197);
                                                }
                                                if(_loc13_)
                                                {
                                                   §§push(0);
                                                   if(_loc13_ || Boolean(this))
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(_loc13_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            addr04d8:
                                                            while(§§pop() < this._temporaryAdded.length - 1)
                                                            {
                                                               _loc8_ = this._temporaryAdded[_loc5_] as StreetObject;
                                                               if(_loc8_ == null)
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     addr0588:
                                                                     loop5:
                                                                     while(§§pop() < this._temporaryAdded.length)
                                                                     {
                                                                        if(this._temporaryAdded[_loc5_] is StreetObject)
                                                                        {
                                                                           if(!(_loc13_ || Boolean(_loc2_)))
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc10_ = this._temporaryAdded[_loc5_] as StreetObject;
                                                                           if(_loc13_ || Boolean(this))
                                                                           {
                                                                              chooseTexture(_loc10_);
                                                                           }
                                                                        }
                                                                        chooseColor(this._temporaryAdded[_loc5_],_loc5_,this._resources,this._costs);
                                                                        if(!(_loc14_ && Boolean(this)))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc5_++;
                                                                              if(_loc14_)
                                                                              {
                                                                                 break loop5;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           break;
                                                                           addr057e:
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     break;
                                                                  }
                                                                  return;
                                                                  addr0586:
                                                               }
                                                               _loc9_ = this._temporaryAdded[_loc5_ + 1] as StreetObject;
                                                               if(_loc13_ || Boolean(_loc2_))
                                                               {
                                                                  if(_loc8_.xIndex == _loc9_.xIndex)
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        if(_loc8_.yIndex < _loc9_.yIndex)
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              §§push(_loc8_.streetObjectVo);
                                                                              if(_loc13_)
                                                                              {
                                                                                 §§push(true);
                                                                                 if(!(_loc14_ && Boolean(_loc1_)))
                                                                                 {
                                                                                    §§pop().n = §§pop();
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§push(_loc9_.streetObjectVo);
                                                                                       if(_loc13_ || Boolean(_loc3_))
                                                                                       {
                                                                                          §§push(true);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§pop().s = §§pop();
                                                                                             if(_loc13_ || Boolean(_loc1_))
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0417:
                                                                                             §§pop().n = §§pop();
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                addr0463:
                                                                                                §§push(_loc9_.streetObjectVo);
                                                                                                if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   addr0476:
                                                                                                   §§push(true);
                                                                                                   if(_loc13_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      §§pop().w = §§pop();
                                                                                                      if(_loc14_ && Boolean(_loc1_))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr04cb:
                                                                                                      §§pop().o = §§pop();
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                   addr04d4:
                                                                                                   _loc5_++;
                                                                                                   break;
                                                                                                }
                                                                                                addr04ca:
                                                                                                §§push(true);
                                                                                                §§goto(addr04cb);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr04d4);
                                                                                       }
                                                                                       §§goto(addr0476);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr045a:
                                                                                    §§pop().o = §§pop();
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§goto(addr0463);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr04d4);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr04ad:
                                                                                 §§push(true);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    §§pop().w = §§pop();
                                                                                    if(!(_loc13_ || Boolean(_loc3_)))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr04ca);
                                                                                    §§push(_loc9_.streetObjectVo);
                                                                                 }
                                                                              }
                                                                              §§goto(addr04cb);
                                                                           }
                                                                           §§goto(addr0463);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc8_.streetObjectVo);
                                                                           if(_loc13_)
                                                                           {
                                                                              §§push(true);
                                                                              if(_loc13_)
                                                                              {
                                                                                 §§pop().s = §§pop();
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    §§push(_loc9_.streetObjectVo);
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§push(true);
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          §§goto(addr0417);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr045a);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr044b:
                                                                                       §§push(true);
                                                                                       if(!(_loc14_ && Boolean(_loc1_)))
                                                                                       {
                                                                                          §§goto(addr045a);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr04cb);
                                                                                 }
                                                                                 §§goto(addr0463);
                                                                              }
                                                                              §§goto(addr045a);
                                                                           }
                                                                        }
                                                                        §§goto(addr0476);
                                                                     }
                                                                     §§goto(addr04d4);
                                                                  }
                                                                  else if(_loc8_.xIndex < _loc9_.xIndex)
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(_loc8_.streetObjectVo);
                                                                     if(_loc13_ || Boolean(_loc2_))
                                                                     {
                                                                        §§goto(addr044b);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr04ad);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc8_.streetObjectVo);
                                                                     if(!(_loc14_ && Boolean(this)))
                                                                     {
                                                                        §§goto(addr04ad);
                                                                     }
                                                                  }
                                                                  §§goto(addr04ca);
                                                               }
                                                               §§goto(addr04d4);
                                                            }
                                                         }
                                                      }
                                                      addr04e3:
                                                      §§push(0);
                                                      if(!_loc14_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(_loc13_ || Boolean(this))
                                                         {
                                                            §§goto(addr0586);
                                                         }
                                                         §§goto(addr057e);
                                                      }
                                                      §§goto(addr0588);
                                                   }
                                                   §§goto(addr04d8);
                                                }
                                                §§goto(addr04e3);
                                             }
                                             §§goto(addr0168);
                                          }
                                          §§goto(addr016e);
                                       }
                                       §§goto(addr0168);
                                    }
                                    §§goto(addr00d8);
                                 }
                                 §§goto(addr00c5);
                              }
                              §§goto(addr00c6);
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr009a);
            }
            §§goto(addr00c5);
         }
         addr00d8:
      }
      
      public function getStreetsToBuild() : Vector.<IPlaneObject>
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:IPlaneObject = null;
         var _loc1_:Vector.<IPlaneObject> = new Vector.<IPlaneObject>();
         var _loc2_:int = 0;
         while(_loc2_ < this._temporaryAdded.length)
         {
            _loc3_ = this._temporaryAdded[_loc2_];
            if(_loc5_ || Boolean(this))
            {
               if(isPlaneBuildable(_loc2_,this._resources,this._costs))
               {
                  if(_loc5_)
                  {
                     addr007d:
                     _loc1_.push(_loc3_);
                     if(!_loc5_)
                     {
                        continue;
                     }
                  }
               }
               _loc2_++;
               continue;
            }
            §§goto(addr007d);
         }
         if(!_loc4_)
         {
            this.clearTemporary();
            if(!_loc4_)
            {
               this._from = null;
            }
         }
         return _loc1_;
      }
      
      public function getNumStreetsToBuild() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this._temporaryAdded != null)
            {
               if(!_loc2_)
               {
                  return this._temporaryAdded.length;
               }
            }
         }
         return 0;
      }
      
      public function clearTemporary() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:IPlaneObject = null;
         var _loc2_:StreetObject = null;
         while(this._temporaryAdded.length > 0)
         {
            _loc1_ = this._temporaryAdded.shift();
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               this._streetObjectPool.push(_loc1_);
               if(_loc4_ || Boolean(_loc1_))
               {
                  _loc1_.presentation.visible = false;
                  if(_loc4_)
                  {
                     addr0060:
                     _loc1_.container.visible = false;
                     if(_loc4_ || Boolean(this))
                     {
                        addr0075:
                        if(!(_loc1_ is StreetObject))
                        {
                           continue;
                        }
                     }
                  }
                  _loc2_ = _loc1_ as StreetObject;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(_loc2_.streetObjectVo);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        §§push(false);
                        if(_loc4_)
                        {
                           §§pop().n = §§pop();
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr00cb:
                              §§push(_loc2_.streetObjectVo);
                              if(_loc4_)
                              {
                                 §§push(false);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§pop().s = §§pop();
                                    if(!_loc3_)
                                    {
                                       §§push(_loc2_.streetObjectVo);
                                       if(_loc4_ || Boolean(_loc1_))
                                       {
                                          addr0108:
                                          §§push(false);
                                          if(_loc4_)
                                          {
                                             addr010f:
                                             §§pop().w = §§pop();
                                             if(!(_loc4_ || Boolean(_loc2_)))
                                             {
                                                continue;
                                             }
                                             addr0124:
                                             addr0120:
                                             §§push(_loc2_.streetObjectVo);
                                             §§push(false);
                                          }
                                          addr0125:
                                          §§pop().o = §§pop();
                                          continue;
                                       }
                                       §§goto(addr0124);
                                    }
                                    §§goto(addr0120);
                                 }
                                 §§goto(addr010f);
                              }
                              §§goto(addr0108);
                           }
                           §§goto(addr0120);
                        }
                        §§goto(addr0125);
                     }
                     §§goto(addr0124);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr0060);
            }
            §§goto(addr0075);
         }
      }
      
      private function clearStreetPool() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:IPlaneObject = null;
         while(this._streetObjectPool.length > 0)
         {
            _loc1_ = this._streetObjectPool.shift();
            if(_loc2_ || _loc2_)
            {
               facade.sendNotification(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,_loc1_);
            }
         }
      }
      
      public function endBuildMode() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:TweenMax = null;
         if(!_loc5_)
         {
            if(this._isAnimating)
            {
               if(!_loc5_)
               {
                  this._skipAnimation = true;
               }
               addr0031:
               var _loc2_:int = 0;
               for each(_loc1_ in this._delayedFloaterCalls)
               {
                  if(_loc4_ || Boolean(this))
                  {
                     _loc1_.complete();
                  }
               }
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._delayedFloaterCalls.length = 0;
                  if(!(_loc5_ && Boolean(this)))
                  {
                     this._delayedBuildCalls.length = 0;
                     if(_loc4_ || Boolean(this))
                     {
                        addr00a8:
                        this._skipAnimation = false;
                        if(!_loc5_)
                        {
                           this._from = null;
                           if(_loc4_)
                           {
                              addr00cc:
                              this._to = null;
                              if(!_loc5_)
                              {
                                 this.clearTemporary();
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    addr00ea:
                                    this.clearStreetPool();
                                 }
                                 §§goto(addr00ef);
                              }
                              §§goto(addr00ea);
                           }
                        }
                     }
                     addr00ef:
                     return;
                  }
               }
               §§goto(addr00cc);
            }
            §§goto(addr00a8);
         }
         §§goto(addr0031);
      }
      
      private function updateResources() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this._costs = 0;
            if(_loc1_)
            {
               this._resources = (facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy).ingameCurrency;
               if(_loc1_)
               {
                  §§push(this._configContainer);
                  if(!_loc2_)
                  {
                     if(§§pop().constructionPhases.length > 0)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §§push(this._configContainer);
                           if(_loc1_)
                           {
                              addr006c:
                              §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                              if(!_loc2_)
                              {
                                 §§push(§§pop().getFirstPhaseByType(§§pop()));
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§push(§§pop().listEntryOutputs.length > 0);
                                    if(!_loc2_)
                                    {
                                       var _temp_4:* = §§pop();
                                       §§push(_temp_4);
                                       if(_temp_4)
                                       {
                                          if(_loc1_ || _loc2_)
                                          {
                                             §§goto(addr00b1);
                                          }
                                       }
                                       §§goto(addr00df);
                                    }
                                    addr00b1:
                                    §§pop();
                                    if(_loc1_)
                                    {
                                       addr00df:
                                       addr00c5:
                                       addr00c1:
                                       addr00bb:
                                       addr00b7:
                                       if(Boolean(this._configContainer.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY)))
                                       {
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr00f0:
                                             this._costs = Math.abs(this._configContainer.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY).outputAmount);
                                          }
                                       }
                                    }
                                    §§goto(addr011a);
                                 }
                                 §§goto(addr00c5);
                              }
                              §§goto(addr00c1);
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr011a);
                  }
                  §§goto(addr006c);
               }
               §§goto(addr00f0);
            }
            addr011a:
            return;
         }
         §§goto(addr00f0);
      }
      
      public function set isAnimating(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._isAnimating = param1;
         }
      }
      
      public function get delayedBuildCalls() : Vector.<TweenMax>
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            if(!this._delayedBuildCalls)
            {
               if(_loc2_)
               {
                  this._delayedBuildCalls = new Vector.<TweenMax>();
               }
            }
         }
         return this._delayedBuildCalls;
      }
      
      public function get skipAnimation() : Boolean
      {
         return this._skipAnimation;
      }
      
      public function get delayedFloaterCalls() : Vector.<TweenMax>
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            if(!this._delayedFloaterCalls)
            {
               if(_loc2_ || _loc1_)
               {
                  this._delayedFloaterCalls = new Vector.<TweenMax>();
               }
            }
         }
         return this._delayedFloaterCalls;
      }
   }
}

