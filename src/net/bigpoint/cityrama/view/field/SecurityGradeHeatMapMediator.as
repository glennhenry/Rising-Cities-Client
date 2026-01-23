package net.bigpoint.cityrama.view.field
{
   import as3isolib.display.IsoGroup;
   import as3isolib.display.primitive.IsoRectangle;
   import as3isolib.enum.IsoOrientation;
   import as3isolib.graphics.BitmapFill;
   import as3isolib.graphics.Stroke;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.controller.infrastructure.heatmap.ListenMouseMoveForChangeHeatmapCommand;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.common.SecurityMatrix;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.infrastructure.vo.SecurityStatusVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.urbies.SpawnProxy;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class SecurityGradeHeatMapMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "SecurityGradeHeatMapMediator";
      
      public static const RED:uint = 4294935552;
      
      public static const GREEN:uint = 4278255414;
      
      public static const YELLOW:uint = 4294377216;
      
      private static const WHITE:uint = 4289374890;
      
      private static const RANGE_RECT_COLOR:uint = 6152958;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "SecurityGradeHeatMapMediator";
         if(_loc1_ || _loc2_)
         {
            RED = 4294935552;
            if(_loc1_)
            {
               addr0052:
               GREEN = 4278255414;
               if(_loc1_)
               {
                  YELLOW = 4294377216;
                  if(_loc1_ || SecurityGradeHeatMapMediator)
                  {
                     §§goto(addr0074);
                  }
                  §§goto(addr0081);
               }
            }
            addr0074:
            WHITE = 4289374890;
            if(!_loc2_)
            {
               addr0081:
               RANGE_RECT_COLOR = 6152958;
            }
            §§goto(addr0089);
         }
         §§goto(addr0052);
      }
      addr0089:
      
      private const BLOCKED_BY_DEVICE:uint = 291923558;
      
      private const HEATRECTCONTAINERALPHA:Number = 0.5;
      
      private var _matrixProxy:SecurityMatrixProxy;
      
      private var _spawnProxy:SpawnProxy;
      
      private var _appmodeProxy:ApplicationModeProxy;
      
      private var _basementViewProxy:BasementViewProxy;
      
      private var _fireHeatMap:BitmapData;
      
      private var _policeHeatMap:BitmapData;
      
      private var _hospitalHeatMap:BitmapData;
      
      private var _heatMapDict:Dictionary;
      
      private var tilesize:Number;
      
      private var _heatRect:IsoRectangle;
      
      private var _playfieldExpansionsProxy:PlayfieldExpansionsProxy;
      
      private var maxSize:Rectangle;
      
      private var _currentViewedType:String = "";
      
      private var _heatFill:BitmapFill;
      
      private var _oldBitmapData:BitmapData;
      
      private var _oldMousePoint:Point;
      
      private var _tempBMPdata:BitmapData;
      
      private var showDelay:TweenMax;
      
      private var _rangeRects:Vector.<IsoRectangle>;
      
      public function SecurityGradeHeatMapMediator(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            super(param1,param2);
         }
      }
      
      private function prepare() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:IsoRectangle = null;
         if(_loc6_)
         {
            this._heatMapDict = new Dictionary();
            if(_loc6_)
            {
               this._heatMapDict[ServerTagConstants.POLICE_DEPARTMENT] = this._policeHeatMap;
               if(!_loc5_)
               {
                  this._heatMapDict[ServerTagConstants.FIRE_DEPARTMENT] = this._fireHeatMap;
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     this._heatMapDict[ServerTagConstants.HOSPITAL] = this._hospitalHeatMap;
                     if(!(_loc5_ && _loc1_))
                     {
                        this._matrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
                        if(!(_loc5_ && _loc3_))
                        {
                           this._spawnProxy = facade.retrieveProxy(SpawnProxy.NAME) as SpawnProxy;
                           if(!_loc5_)
                           {
                              addr00bf:
                              this._basementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
                              if(!_loc5_)
                              {
                                 addr00d7:
                                 this._appmodeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
                                 if(!_loc5_)
                                 {
                                    this._playfieldExpansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
                                    addr00ef:
                                 }
                              }
                              addr010b:
                              var _loc1_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
                              if(!(_loc5_ && Boolean(_loc2_)))
                              {
                                 this.maxSize = _loc1_.maxUsablePlayfieldSize;
                                 if(_loc6_)
                                 {
                                    this.tilesize = _loc1_.tileSize;
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       addr014f:
                                       this._rangeRects = new <IsoRectangle>[new IsoRectangle(),new IsoRectangle(),new IsoRectangle()];
                                    }
                                 }
                                 for each(_loc2_ in this._rangeRects)
                                 {
                                    if(!(_loc5_ && Boolean(_loc1_)))
                                    {
                                       _loc2_.setSize(1,1,0);
                                       if(_loc6_ || Boolean(this))
                                       {
                                          _loc2_.strokes = [new Stroke(2,RANGE_RECT_COLOR)];
                                       }
                                    }
                                 }
                                 if(_loc6_ || Boolean(_loc1_))
                                 {
                                    this.prepareRangeRects();
                                 }
                                 return;
                              }
                              §§goto(addr014f);
                           }
                        }
                     }
                     §§goto(addr00ef);
                  }
                  §§goto(addr00d7);
               }
               §§goto(addr00bf);
            }
         }
         §§goto(addr010b);
      }
      
      private function getHeatmap(param1:SecurityMatrix, param2:String) : BitmapData
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:* = NaN;
         var _loc5_:SecurityStatusVo = null;
         var _loc7_:* = 0;
         var _loc4_:BitmapData = new BitmapData(this.maxSize.width + this.maxSize.x,this.maxSize.height + this.maxSize.y,true,16777215);
         _loc4_.lock();
         var _loc6_:int = this.maxSize.x;
         loop0:
         while(true)
         {
            §§push(_loc6_);
            loop1:
            while(true)
            {
               if(§§pop() >= this.maxSize.width)
               {
                  if(!_loc10_)
                  {
                     break;
                  }
               }
               else
               {
                  §§push(int(this.maxSize.y));
                  if(!_loc9_)
                  {
                     _loc7_ = §§pop();
                     if(_loc10_ || Boolean(param2))
                     {
                        while(true)
                        {
                           §§push(_loc7_);
                           if(!(_loc10_ || Boolean(param2)))
                           {
                              break;
                           }
                           loop5:
                           while(true)
                           {
                              if(§§pop() >= this.maxSize.height + this.maxSize.y)
                              {
                                 if(!(_loc10_ || Boolean(this)))
                                 {
                                    continue loop0;
                                 }
                                 _loc6_++;
                                 if(_loc10_)
                                 {
                                    continue loop0;
                                 }
                              }
                              else
                              {
                                 if(!this.isOutsideActivePlayfield(_loc6_,_loc7_))
                                 {
                                    if(_loc10_ || Boolean(_loc3_))
                                    {
                                       _loc3_ = WHITE;
                                       if(!_loc9_)
                                       {
                                          while(true)
                                          {
                                             _loc5_ = param1.getTileInformation(_loc6_,_loc7_,param2);
                                             §§push(_loc5_ == null);
                                             if(!_loc9_)
                                             {
                                                §§push(!§§pop());
                                                if(!(_loc9_ && Boolean(_loc3_)))
                                                {
                                                   var _temp_34:* = §§pop();
                                                   §§push(_temp_34);
                                                   §§push(_temp_34);
                                                   if(_loc10_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc9_ && Boolean(param1)))
                                                         {
                                                            addr00e6:
                                                            §§pop();
                                                            if(!_loc9_)
                                                            {
                                                               §§push(_loc5_.level);
                                                               if(_loc10_)
                                                               {
                                                                  §§push(§§pop() == 0);
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr0101:
                                                                     §§push(!§§pop());
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr0108:
                                                                        var _temp_36:* = §§pop();
                                                                        addr0109:
                                                                        §§push(_temp_36);
                                                                        if(_temp_36)
                                                                        {
                                                                           if(_loc10_ || Boolean(this))
                                                                           {
                                                                              §§pop();
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§push(_loc5_.level);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr012e:
                                                                                    addr012d:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(_loc5_.level);
                                                                                          if(_loc10_ || Boolean(param1))
                                                                                          {
                                                                                             var _loc8_:* = §§pop();
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(SecurityStatusVo.LEVEL_1);
                                                                                                if(_loc10_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(_loc10_ || Boolean(this))
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            if(_loc10_ || Boolean(param2))
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr024f:
                                                                                                            §§push(1);
                                                                                                            if(_loc10_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(SecurityStatusVo.LEVEL_2);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            addr023d:
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr0245:
                                                                                                               if(§§pop() === §§pop())
                                                                                                               {
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     §§goto(addr024f);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr02bf:
                                                                                                                     §§push(3);
                                                                                                                     if(_loc10_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(SecurityStatusVo.LEVEL_3);
                                                                                                                  if(!(_loc9_ && Boolean(_loc3_)))
                                                                                                                  {
                                                                                                                     §§push(_loc8_);
                                                                                                                     if(!(_loc9_ && Boolean(_loc3_)))
                                                                                                                     {
                                                                                                                        addr0287:
                                                                                                                        if(§§pop() === §§pop())
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              addr0291:
                                                                                                                              §§push(2);
                                                                                                                              if(_loc9_ && Boolean(param1))
                                                                                                                              {
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr02bf);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(SecurityStatusVo.BLOCKED_BY_DEVICE);
                                                                                                                           if(_loc10_ || Boolean(param1))
                                                                                                                           {
                                                                                                                              addr02bb:
                                                                                                                              if(§§pop() === _loc8_)
                                                                                                                              {
                                                                                                                                 §§goto(addr02bf);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(4);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr02e1:
                                                                                                                        switch(§§pop())
                                                                                                                        {
                                                                                                                           case 0:
                                                                                                                              §§push(RED);
                                                                                                                              if(!(_loc9_ && Boolean(param1)))
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!(_loc9_ && Boolean(param2)))
                                                                                                                                 {
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr0179:
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    if(_loc10_ || Boolean(param1))
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr01bc:
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 addr01bb:
                                                                                                                                 if(_loc9_ && Boolean(this))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr02fb:
                                                                                                                              _loc4_.setPixel32(_loc6_ - this.maxSize.x,_loc7_ - this.maxSize.y,_loc3_);
                                                                                                                              break;
                                                                                                                           case 1:
                                                                                                                              §§push(YELLOW);
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr0179);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr01aa:
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr01bb);
                                                                                                                              }
                                                                                                                              §§goto(addr02fb);
                                                                                                                           case 2:
                                                                                                                              §§push(GREEN);
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr01aa);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr01bc);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr01bb);
                                                                                                                              }
                                                                                                                              §§goto(addr01bc);
                                                                                                                           case 3:
                                                                                                                              §§goto(addr01bb);
                                                                                                                              §§push(this.BLOCKED_BY_DEVICE);
                                                                                                                           default:
                                                                                                                              §§goto(addr02fb);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc7_++;
                                                                                                                           if(!(_loc10_ || Boolean(param1)))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           break loop5;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                        addr02df:
                                                                                                                        addr0314:
                                                                                                                     }
                                                                                                                     §§goto(addr02bb);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr02df);
                                                                                                            }
                                                                                                            §§goto(addr0287);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr02df);
                                                                                                   }
                                                                                                   §§goto(addr0245);
                                                                                                }
                                                                                                §§goto(addr023d);
                                                                                             }
                                                                                             §§goto(addr0291);
                                                                                          }
                                                                                          §§goto(addr02e1);
                                                                                       }
                                                                                       §§goto(addr0314);
                                                                                    }
                                                                                    §§goto(addr02fb);
                                                                                 }
                                                                                 §§goto(addr02e1);
                                                                              }
                                                                              §§goto(addr02fb);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr012e);
                                                                  }
                                                                  §§goto(addr0108);
                                                               }
                                                               §§goto(addr012d);
                                                            }
                                                            §§goto(addr02fb);
                                                         }
                                                         §§goto(addr0101);
                                                      }
                                                      §§goto(addr0108);
                                                   }
                                                   §§goto(addr0109);
                                                }
                                                §§goto(addr0101);
                                             }
                                             §§goto(addr00e6);
                                          }
                                          break loop1;
                                          addr00a5:
                                       }
                                       else
                                       {
                                          addr037c:
                                       }
                                       addr037c:
                                       _loc4_.unlock();
                                       break loop1;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr0314);
                              }
                              §§goto(addr037c);
                           }
                        }
                        continue;
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr0334);
               }
               §§goto(addr037c);
            }
            break;
         }
         return _loc4_;
      }
      
      private function isOutsideActivePlayfield(param1:int, param2:int) : Boolean
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:ExpansionFieldObjectVo = null;
         var _loc4_:Rectangle = null;
         for each(_loc3_ in this._playfieldExpansionsProxy.validExpansionsInactive)
         {
            _loc4_ = _loc3_.matrixCoordinates;
            if(_loc4_.containsPoint(new Point(param1,param2)))
            {
               if(!_loc8_)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function showHeatMap(param1:String) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!(_loc6_ && _loc2_))
         {
            this.component.removeAllChildren();
            if(_loc5_)
            {
               this.prepareRangeRects();
               if(_loc5_)
               {
                  this._currentViewedType = param1;
                  if(!(_loc6_ && _loc2_))
                  {
                     addr004f:
                     this._heatRect = new IsoRectangle();
                  }
               }
            }
            var _loc2_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
            if(_loc5_ || Boolean(this))
            {
               this.maxSize = _loc2_.maxUsablePlayfieldSize;
               if(_loc5_)
               {
                  §§push(this._heatRect);
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     §§push(this.maxSize.width * this.tilesize);
                     if(!_loc6_)
                     {
                        §§push(this.maxSize.height * this.tilesize);
                        if(_loc5_ || Boolean(param1))
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                              §§pop().setSize(§§pop(),§§pop(),§§pop());
                              if(!_loc6_)
                              {
                                 §§push(this._heatRect);
                                 if(_loc5_)
                                 {
                                    addr00f8:
                                    §§pop().moveTo(this.maxSize.x * this.tilesize,this.maxSize.y * this.tilesize,0);
                                    addr00f6:
                                    addr00eb:
                                    addr00e0:
                                    if(_loc5_ || Boolean(this))
                                    {
                                       addr010e:
                                       this._heatRect.strokes = [];
                                       addr010a:
                                    }
                                    addr0113:
                                    var _loc3_:BitmapData = this.getHeatmap(this._matrixProxy.securityMatrix,param1);
                                    if(_loc5_ || Boolean(param1))
                                    {
                                       this._heatMapDict[param1] = _loc3_;
                                       if(_loc5_ || Boolean(_loc2_))
                                       {
                                          this._oldBitmapData = _loc3_.clone();
                                          if(!(_loc6_ && Boolean(_loc3_)))
                                          {
                                             addr016d:
                                             this._matrixProxy.validate(param1);
                                          }
                                          addr0176:
                                          var _loc4_:Matrix = new Matrix();
                                          _loc4_.scale(this.tilesize,this.tilesize);
                                          if(_loc5_ || Boolean(_loc2_))
                                          {
                                             this._heatFill = new BitmapFill(this._heatMapDict[param1],IsoOrientation.XY,_loc4_);
                                             if(!(_loc6_ && Boolean(_loc2_)))
                                             {
                                                §§push(this._heatRect);
                                                if(!(_loc6_ && Boolean(_loc3_)))
                                                {
                                                   §§pop().fills = [this._heatFill];
                                                   if(!_loc6_)
                                                   {
                                                      addr01eb:
                                                      this._heatRect.container.alpha = 0;
                                                      if(_loc5_)
                                                      {
                                                         TweenMax.to(this._heatRect.container,1.5,{"alpha":this.HEATRECTCONTAINERALPHA});
                                                         if(_loc5_)
                                                         {
                                                            addr0218:
                                                            this.component.addChild(this._heatRect);
                                                            if(_loc5_)
                                                            {
                                                               addr022a:
                                                               sendNotification(ApplicationNotificationConstants.HIDE_ALL_ICONS);
                                                               if(!_loc6_)
                                                               {
                                                                  this._spawnProxy.enabled = false;
                                                                  if(!(_loc6_ && Boolean(_loc3_)))
                                                                  {
                                                                     addr0250:
                                                                     §§push(this._basementViewProxy);
                                                                     if(_loc5_ || Boolean(_loc3_))
                                                                     {
                                                                        if(!§§pop().isBaseViewEnabled)
                                                                        {
                                                                           if(_loc5_ || Boolean(_loc3_))
                                                                           {
                                                                              addr0277:
                                                                              §§push(this._basementViewProxy);
                                                                              if(!(_loc6_ && Boolean(_loc2_)))
                                                                              {
                                                                                 §§push(true);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§pop().isBaseViewEnabled = §§pop();
                                                                                    if(_loc5_ || Boolean(this))
                                                                                    {
                                                                                       addr02ad:
                                                                                       §§push(this._basementViewProxy);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr02b8:
                                                                                          §§pop().setByUserAxn = false;
                                                                                          addr02b7:
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr02c5:
                                                                                             this._basementViewProxy.changeBaseViewForAll();
                                                                                             addr02c1:
                                                                                             if(!(_loc6_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                addr02d7:
                                                                                                facade.registerCommand(ApplicationNotificationConstants.MOUSE_MOVE_FOR_CHANGE_HEATMAP,ListenMouseMoveForChangeHeatmapCommand);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr02e4);
                                                                                       }
                                                                                       §§goto(addr02c5);
                                                                                    }
                                                                                    addr02e4:
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr02b8);
                                                                              }
                                                                              §§goto(addr02b7);
                                                                           }
                                                                           §§goto(addr02c1);
                                                                        }
                                                                        §§goto(addr02d7);
                                                                     }
                                                                     §§goto(addr02c5);
                                                                  }
                                                                  §§goto(addr02c1);
                                                               }
                                                               §§goto(addr02ad);
                                                            }
                                                            §§goto(addr02c1);
                                                         }
                                                         §§goto(addr0250);
                                                      }
                                                      §§goto(addr022a);
                                                   }
                                                   §§goto(addr0250);
                                                }
                                                §§goto(addr01eb);
                                             }
                                             §§goto(addr0218);
                                          }
                                          §§goto(addr0277);
                                       }
                                       §§goto(addr016d);
                                    }
                                    §§goto(addr0176);
                                 }
                                 §§goto(addr010e);
                              }
                              §§goto(addr010a);
                           }
                           §§goto(addr00f8);
                        }
                        §§goto(addr00f6);
                     }
                     §§goto(addr00eb);
                  }
                  §§goto(addr00e0);
               }
               §§goto(addr010a);
            }
            §§goto(addr0113);
         }
         §§goto(addr004f);
      }
      
      private function prepareRangeRects() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:IsoRectangle = null;
         for each(_loc1_ in this._rangeRects)
         {
            if(_loc4_ || Boolean(this))
            {
               this.component.addChild(_loc1_);
               if(!_loc5_)
               {
                  _loc1_.container.visible = false;
               }
            }
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this.prepare();
            if(_loc2_ || _loc1_)
            {
               this.buildInitialHeatMaps();
            }
         }
      }
      
      private function buildInitialHeatMaps() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this._fireHeatMap = this.getHeatmap(this._matrixProxy.securityMatrix,ServerTagConstants.FIRE_DEPARTMENT);
            if(!_loc1_)
            {
               §§push(this._matrixProxy);
               if(!_loc1_)
               {
                  §§push(ServerTagConstants.FIRE_DEPARTMENT);
                  if(_loc2_ || _loc1_)
                  {
                     §§pop().validate(§§pop());
                     if(_loc2_)
                     {
                        this._policeHeatMap = this.getHeatmap(this._matrixProxy.securityMatrix,ServerTagConstants.POLICE_DEPARTMENT);
                        if(_loc2_ || _loc1_)
                        {
                           addr008a:
                           §§push(this._matrixProxy);
                           if(_loc2_)
                           {
                              §§push(ServerTagConstants.POLICE_DEPARTMENT);
                              if(!(_loc1_ && Boolean(this)))
                              {
                                 addr00a5:
                                 §§pop().validate(§§pop());
                                 if(_loc2_)
                                 {
                                    §§goto(addr00b8);
                                 }
                                 §§goto(addr00db);
                              }
                              §§goto(addr00e4);
                           }
                           §§goto(addr00df);
                        }
                        addr00b8:
                        this._hospitalHeatMap = this.getHeatmap(this._matrixProxy.securityMatrix,ServerTagConstants.HOSPITAL);
                        if(_loc2_ || _loc2_)
                        {
                           addr00e4:
                           this._matrixProxy.validate(ServerTagConstants.HOSPITAL);
                           addr00db:
                           addr00df:
                        }
                        return;
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr00df);
            }
         }
         §§goto(addr008a);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.SECURITY_GRID_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1.getName());
         if(_loc4_ || Boolean(param1))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = _loc2_;
         if(!_loc5_)
         {
            if(ApplicationNotificationConstants.SECURITY_GRID_CHANGED === _loc3_)
            {
               addr006d:
               §§push(0);
               if(_loc4_ || _loc3_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  this.redraw();
                  if(_loc5_)
                  {
                  }
            }
            return;
         }
         §§goto(addr006d);
      }
      
      private function redraw() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:IsoRectangle = null;
         if(_loc4_ || _loc2_)
         {
            if(this._currentViewedType != "")
            {
               addr003e:
               var _loc3_:* = this._rangeRects;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     _loc1_.container.visible = false;
                  }
               }
               if(_loc4_)
               {
                  this.showHeatMap(this._currentViewedType);
               }
            }
            return;
         }
         §§goto(addr003e);
      }
      
      private function get component() : IsoGroup
      {
         return super.viewComponent as IsoGroup;
      }
      
      public function hide() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._currentViewedType = "";
            if(_loc1_)
            {
               this.component.removeAllChildren();
               if(!(_loc2_ && _loc2_))
               {
                  sendNotification(ApplicationNotificationConstants.SHOW_ALL_ICONS);
                  if(!(_loc2_ && _loc1_))
                  {
                     if(this._appmodeProxy.mode == ApplicationModeProxy.MODE_NORMAL)
                     {
                        if(_loc1_ || Boolean(this))
                        {
                           addr006a:
                           this._spawnProxy.enabled = true;
                           if(_loc1_ || _loc1_)
                           {
                              addr007f:
                              facade.removeCommand(ApplicationNotificationConstants.MOUSE_MOVE_FOR_CHANGE_HEATMAP);
                              if(_loc1_)
                              {
                                 this._oldBitmapData = null;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(this.showDelay);
                                    if(_loc1_ || _loc1_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc1_ || _loc1_)
                                          {
                                             addr00d1:
                                             this.showDelay.kill();
                                             if(_loc1_ || _loc2_)
                                             {
                                                §§goto(addr00e2);
                                             }
                                             §§goto(addr017f);
                                          }
                                          §§goto(addr00ec);
                                       }
                                       addr00e2:
                                       this._tempBMPdata = null;
                                       if(_loc1_)
                                       {
                                          addr00ec:
                                          §§push(this._basementViewProxy);
                                          if(_loc1_ || Boolean(this))
                                          {
                                             §§push(§§pop().isBaseViewEnabled);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   var _temp_11:* = §§pop();
                                                   §§push(_temp_11);
                                                   if(_temp_11)
                                                   {
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         addr0125:
                                                         §§pop();
                                                         if(_loc1_)
                                                         {
                                                            addr012b:
                                                            §§push(this._basementViewProxy);
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               §§goto(addr0145);
                                                            }
                                                            §§goto(addr019d);
                                                         }
                                                         §§goto(addr0199);
                                                      }
                                                   }
                                                }
                                                addr0145:
                                                §§push(§§pop().setByUserAxn);
                                                if(!_loc2_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                if(§§pop())
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      addr014e:
                                                      §§push(this._basementViewProxy);
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         §§push(false);
                                                         if(!_loc2_)
                                                         {
                                                            §§pop().isBaseViewEnabled = §§pop();
                                                            if(_loc1_ || Boolean(this))
                                                            {
                                                               addr017f:
                                                               §§push(this._basementViewProxy);
                                                               if(!_loc2_)
                                                               {
                                                                  §§goto(addr0189);
                                                               }
                                                               §§goto(addr019d);
                                                            }
                                                            §§goto(addr0199);
                                                         }
                                                         addr0189:
                                                         §§pop().setByUserAxn = false;
                                                         §§goto(addr0188);
                                                      }
                                                      addr0188:
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         addr019d:
                                                         this._basementViewProxy.changeBaseViewForAll();
                                                         addr0199:
                                                      }
                                                      §§goto(addr01a1);
                                                   }
                                                   §§goto(addr017f);
                                                }
                                                §§goto(addr01a1);
                                             }
                                             §§goto(addr0125);
                                          }
                                          §§goto(addr0188);
                                       }
                                       addr01a1:
                                       return;
                                    }
                                    §§goto(addr00d1);
                                 }
                                 §§goto(addr017f);
                              }
                              §§goto(addr012b);
                           }
                           §§goto(addr017f);
                        }
                        §§goto(addr014e);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr012b);
               }
               §§goto(addr014e);
            }
            §§goto(addr012b);
         }
         §§goto(addr006a);
      }
      
      public function updateSingleGradeProviderVisual(param1:Point, param2:Point, param3:Vector.<ConfigSecurityGradeDTO>, param4:Boolean) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!_loc6_)
         {
            §§push(this._oldMousePoint == null);
            if(!_loc6_)
            {
               §§push(!§§pop());
               if(_loc5_ || Boolean(param3))
               {
                  §§goto(addr0035);
               }
               §§goto(addr0120);
            }
            addr0035:
            var _temp_2:* = §§pop();
            §§push(_temp_2);
            §§push(_temp_2);
            if(!(_loc6_ && Boolean(param1)))
            {
               if(§§pop())
               {
                  if(!(_loc6_ && Boolean(param2)))
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        addr005d:
                        §§push(this._oldMousePoint.x == param1.x);
                        if(!_loc6_)
                        {
                           addr006d:
                           var _temp_5:* = §§pop();
                           §§push(_temp_5);
                           §§push(_temp_5);
                           if(!_loc6_)
                           {
                              §§goto(addr0074);
                           }
                           §§goto(addr00f6);
                        }
                        §§goto(addr011f);
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr0108);
               }
               §§goto(addr006d);
            }
            addr0074:
            if(§§pop())
            {
               if(_loc5_ || Boolean(param3))
               {
                  §§pop();
                  if(!(_loc6_ && Boolean(param2)))
                  {
                     addr0095:
                     §§push(this._oldMousePoint.y == param1.y);
                     if(_loc5_)
                     {
                        §§goto(addr00a5);
                     }
                     §§goto(addr00f5);
                  }
                  §§goto(addr00cc);
               }
               §§goto(addr00ee);
            }
            addr00a5:
            if(§§pop())
            {
               if(!_loc6_)
               {
                  return;
               }
               addr00df:
               §§push(OptionsGlobalVariables.getInstance().highQuality);
               if(!_loc6_)
               {
                  addr00ee:
                  §§push(§§pop());
                  if(_loc5_)
                  {
                     addr00f5:
                     var _temp_8:* = §§pop();
                     addr00f6:
                     §§push(_temp_8);
                     if(_temp_8)
                     {
                        if(!(_loc6_ && Boolean(this)))
                        {
                           addr0108:
                           §§pop();
                           if(_loc5_)
                           {
                              §§goto(addr0120);
                           }
                           §§goto(addr012a);
                        }
                     }
                     addr0120:
                     §§goto(addr010f);
                  }
               }
               §§goto(addr0108);
            }
            else
            {
               addr00cc:
               this._oldMousePoint = param1;
               if(!(_loc6_ && Boolean(param3)))
               {
                  §§goto(addr00df);
               }
            }
            addr010f:
            §§push(param4);
            if(!(_loc6_ && Boolean(this)))
            {
               addr011f:
               §§push(§§pop());
            }
            if(§§pop())
            {
               if(_loc5_)
               {
                  addr012a:
                  §§push(this.showDelay);
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           addr0142:
                           this.showDelay.kill();
                           if(_loc5_ || Boolean(this))
                           {
                              this.showDelay = TweenMax.delayedCall(0.5,this.updateBitmapData,[param1,param2,param3]);
                              addr0154:
                              if(_loc5_)
                              {
                                 addr017f:
                                 this.updateRangeRect(param1,param2,param3);
                                 if(_loc6_)
                                 {
                                 }
                              }
                           }
                        }
                        §§goto(addr019b);
                     }
                     §§goto(addr0154);
                  }
                  §§goto(addr0142);
               }
               §§goto(addr017f);
            }
            else
            {
               this.updateRangeRect(param1,param2,param3);
            }
            addr019b:
            return;
         }
         §§goto(addr005d);
      }
      
      private function updateRangeRect(param1:Point, param2:Point, param3:Vector.<ConfigSecurityGradeDTO>) : void
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc4_:IsoRectangle = null;
         var _loc6_:String = null;
         var _loc7_:ConfigSecurityGradeDTO = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         for each(_loc4_ in this._rangeRects)
         {
            _loc4_.container.visible = false;
         }
         if(!(_loc14_ && Boolean(param3)))
         {
            if(!(this._rangeRects[0] as IsoRectangle).hasParent)
            {
               if(!_loc14_)
               {
                  addr0089:
                  this.prepareRangeRects();
               }
            }
            var _loc5_:int = 0;
            if(_loc15_ || Boolean(param2))
            {
               if(param3.length > 0)
               {
                  if(!_loc14_)
                  {
                     addr00af:
                     _loc6_ = param3[0].type;
                     if(_loc15_)
                     {
                        addr00c0:
                        var _loc12_:int = 0;
                        if(_loc15_ || Boolean(param1))
                        {
                           for each(_loc7_ in param3)
                           {
                              if(_loc7_.type != _loc6_)
                              {
                                 continue;
                              }
                              if(_loc15_)
                              {
                                 §§push(_loc7_.rangeY);
                                 if(!_loc14_)
                                 {
                                    §§push(2);
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc15_)
                                       {
                                          §§push(int(§§pop() + param2.y));
                                          if(_loc15_ || Boolean(param3))
                                          {
                                             _loc8_ = §§pop();
                                             if(!(_loc14_ && Boolean(param1)))
                                             {
                                                §§push(_loc7_.rangeX);
                                                if(_loc15_ || Boolean(param3))
                                                {
                                                   addr0152:
                                                   §§push(§§pop() * 2);
                                                   if(!(_loc14_ && Boolean(param2)))
                                                   {
                                                      addr0161:
                                                      §§push(int(§§pop() + param2.x));
                                                      if(_loc15_ || Boolean(param3))
                                                      {
                                                         §§goto(addr0174);
                                                      }
                                                      §§goto(addr020c);
                                                   }
                                                   §§goto(addr0205);
                                                }
                                                §§goto(addr0174);
                                             }
                                             §§goto(addr01ef);
                                          }
                                          §§goto(addr01e7);
                                       }
                                       §§goto(addr0161);
                                    }
                                    §§goto(addr0152);
                                 }
                                 addr0174:
                                 _loc9_ = §§pop();
                                 if(_loc15_)
                                 {
                                    this._rangeRects[_loc5_].setSize(_loc9_ * this.tilesize,_loc8_ * this.tilesize,0);
                                    if(!_loc14_)
                                    {
                                       addr019f:
                                       this._rangeRects[_loc5_].container.visible = true;
                                       if(!(_loc14_ && Boolean(param2)))
                                       {
                                          §§push(Math.round(param1.x - param2.x / 2) - _loc7_.rangeX);
                                          if(!(_loc14_ && Boolean(param3)))
                                          {
                                             §§push(§§pop());
                                             if(_loc15_)
                                             {
                                                addr01e7:
                                                _loc10_ = §§pop();
                                                if(_loc15_)
                                                {
                                                   addr0205:
                                                   addr01ef:
                                                   §§push(int(Math.round(param1.y - param2.y / 2) - _loc7_.rangeY));
                                                   if(!_loc14_)
                                                   {
                                                      addr020c:
                                                      _loc11_ = §§pop();
                                                      if(!(_loc14_ && Boolean(param3)))
                                                      {
                                                         §§goto(addr021c);
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr0266);
                                                }
                                                §§goto(addr0264);
                                             }
                                             §§goto(addr0266);
                                          }
                                          §§goto(addr0205);
                                       }
                                       §§goto(addr021c);
                                    }
                                    §§goto(addr0254);
                                 }
                                 addr021c:
                                 this._rangeRects[_loc5_].moveTo(_loc10_ * this.tilesize,_loc11_ * this.tilesize,0);
                                 if(!(_loc14_ && Boolean(param3)))
                                 {
                                    addr0254:
                                    _loc5_++;
                                    if(!(_loc14_ && Boolean(param2)))
                                    {
                                       addr0266:
                                       addr0264:
                                       if(_loc5_ <= this._rangeRects.length - 1)
                                       {
                                          continue;
                                       }
                                       if(!_loc15_)
                                       {
                                          continue;
                                       }
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr019f);
                           }
                        }
                     }
                     §§goto(addr0283);
                  }
                  §§goto(addr00c0);
               }
               addr0283:
               return;
            }
            §§goto(addr00af);
         }
         §§goto(addr0089);
      }
      
      private function updateBitmapData(param1:Point, param2:Point, param3:Vector.<ConfigSecurityGradeDTO>) : void
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc4_:ConfigSecurityGradeDTO = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = NaN;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         if(_loc15_)
         {
            §§push(this._heatMapDict[this._currentViewedType] == null);
            if(!(_loc14_ && Boolean(param3)))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(_loc15_)
                  {
                     addr0063:
                     §§pop();
                     if(!(_loc14_ && Boolean(this)))
                     {
                        addr0078:
                        if(this._oldBitmapData == null)
                        {
                           if(!_loc14_)
                           {
                              return;
                           }
                        }
                        else
                        {
                           addr0089:
                           this._tempBMPdata = this._oldBitmapData.clone();
                           if(!_loc14_)
                           {
                              addr009b:
                              this._tempBMPdata.lock();
                           }
                        }
                        loop0:
                        for each(_loc4_ in param3)
                        {
                           if(_loc4_.type != this._currentViewedType)
                           {
                              continue;
                           }
                           if(!_loc14_)
                           {
                              §§push(_loc4_.rangeX);
                              if(!_loc14_)
                              {
                                 §§push(2);
                                 if(_loc15_ || Boolean(this))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc14_ && Boolean(param3)))
                                    {
                                       §§push(int(§§pop() + param2.x));
                                       if(_loc15_ || Boolean(param2))
                                       {
                                          _loc5_ = §§pop();
                                          if(!(_loc14_ && Boolean(param1)))
                                          {
                                             §§push(_loc4_.rangeY);
                                             if(!_loc14_)
                                             {
                                                §§push(2);
                                                if(_loc15_ || Boolean(param1))
                                                {
                                                   addr0133:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc15_ || Boolean(param1))
                                                   {
                                                      §§push(int(§§pop() + param2.y));
                                                      if(!(_loc14_ && Boolean(this)))
                                                      {
                                                         _loc6_ = §§pop();
                                                         if(_loc15_ || Boolean(this))
                                                         {
                                                            §§push(Math.round(param1.x - param2.x / 2) - _loc4_.rangeX);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc15_ || Boolean(param1))
                                                               {
                                                                  addr0190:
                                                                  _loc7_ = §§pop();
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§push(Math.round(param1.y - param2.y / 2) - _loc4_.rangeY);
                                                                     if(_loc15_ || Boolean(param3))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc14_ && Boolean(param1)))
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           if(_loc15_ || Boolean(param2))
                                                                           {
                                                                              §§push(0);
                                                                              if(!(_loc14_ && Boolean(param2)))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc15_ || Boolean(param1))
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(_loc7_);
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       addr020a:
                                                                                       §§push(§§pop());
                                                                                       if(_loc15_ || Boolean(param3))
                                                                                       {
                                                                                          _loc10_ = §§pop();
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                addr03d2:
                                                                                                loop17:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   loop8:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      loop5:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         addr03d7:
                                                                                                         loop4:
                                                                                                         while(§§pop() < §§pop())
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc14_ && Boolean(param1))
                                                                                                                  {
                                                                                                                     break loop8;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr023b:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc11_ = §§pop();
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(!(_loc14_ && Boolean(param3)))
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        if(!(_loc14_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           break loop4;
                                                                                                                        }
                                                                                                                        break loop5;
                                                                                                                     }
                                                                                                                     break loop8;
                                                                                                                  }
                                                                                                                  break loop8;
                                                                                                                  addr037f:
                                                                                                               }
                                                                                                               addr03c8:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc10_++;
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  break loop17;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         addr039f:
                                                                                                         continue loop0;
                                                                                                         loop1:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            if(!(_loc15_ || Boolean(param2)))
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc15_ || Boolean(param1))
                                                                                                            {
                                                                                                               if(§§pop() >= §§pop())
                                                                                                               {
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     break loop17;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(this._tempBMPdata.getPixel32(_loc10_ - this.maxSize.x,_loc11_ - this.maxSize.y));
                                                                                                                  if(_loc15_ || Boolean(param2))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc9_ = §§pop();
                                                                                                                        §§push(_loc9_);
                                                                                                                        if(!(_loc14_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(WHITE);
                                                                                                                              if(_loc15_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc14_ && Boolean(param2))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    this._tempBMPdata.setPixel32(_loc10_ - this.maxSize.x,_loc11_ - this.maxSize.y,RED);
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(_loc15_ || Boolean(param2))
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(RED);
                                                                                                                                          if(!(_loc14_ && Boolean(param1)))
                                                                                                                                          {
                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   break loop17;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this._tempBMPdata.setPixel32(_loc10_ - this.maxSize.x,_loc11_ - this.maxSize.y,YELLOW);
                                                                                                                                                   if(_loc15_ || Boolean(this))
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(YELLOW);
                                                                                                                                                   addr033a:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc14_ && Boolean(param3)))
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               this._tempBMPdata.setPixel32(_loc10_ - this.maxSize.x,_loc11_ - this.maxSize.y,GREEN);
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc11_++;
                                                                                                                                                                     if(!(_loc14_ && Boolean(param1)))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr037f);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr036f:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr034c:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr03c8);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr0337:
                                                                                                                                             }
                                                                                                                                             §§goto(addr036f);
                                                                                                                                          }
                                                                                                                                          §§goto(addr033a);
                                                                                                                                       }
                                                                                                                                       addr02eb:
                                                                                                                                    }
                                                                                                                                    §§goto(addr0337);
                                                                                                                                 }
                                                                                                                                 §§goto(addr036f);
                                                                                                                              }
                                                                                                                              §§goto(addr033a);
                                                                                                                           }
                                                                                                                           break loop1;
                                                                                                                           addr0291:
                                                                                                                        }
                                                                                                                        §§goto(addr02eb);
                                                                                                                     }
                                                                                                                     addr0280:
                                                                                                                  }
                                                                                                                  §§goto(addr0337);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr03d7);
                                                                                                            }
                                                                                                            §§goto(addr03c8);
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0306);
                                                                                       }
                                                                                       §§goto(addr023b);
                                                                                    }
                                                                                    §§goto(addr024a);
                                                                                 }
                                                                                 §§goto(addr0337);
                                                                              }
                                                                              §§goto(addr023b);
                                                                           }
                                                                           §§goto(addr036f);
                                                                        }
                                                                        §§goto(addr03d2);
                                                                     }
                                                                     §§goto(addr0280);
                                                                  }
                                                                  §§goto(addr034c);
                                                               }
                                                               §§goto(addr023b);
                                                            }
                                                            §§goto(addr0280);
                                                         }
                                                         §§goto(addr036f);
                                                      }
                                                      §§goto(addr023b);
                                                   }
                                                   §§goto(addr02eb);
                                                }
                                                §§goto(addr039f);
                                             }
                                             §§goto(addr0190);
                                          }
                                          §§goto(addr036f);
                                       }
                                       §§goto(addr020a);
                                    }
                                    §§goto(addr0291);
                                 }
                                 §§goto(addr0133);
                              }
                              §§goto(addr03d2);
                           }
                           §§goto(addr034c);
                        }
                        if(!(_loc14_ && Boolean(param2)))
                        {
                           this._tempBMPdata.unlock();
                           if(!(_loc14_ && Boolean(param1)))
                           {
                              addr040a:
                              TweenMax.killTweensOf(this._heatRect.container);
                              if(_loc15_)
                              {
                                 §§push(this._heatRect);
                                 if(_loc15_)
                                 {
                                    §§pop().container.alpha = 0;
                                    if(!(_loc14_ && Boolean(this)))
                                    {
                                       this._heatFill.source = this._tempBMPdata;
                                       if(!(_loc14_ && Boolean(param3)))
                                       {
                                          addr0467:
                                          this._heatRect.fills = [this._heatFill];
                                          addr0463:
                                          if(!_loc14_)
                                          {
                                             addr0476:
                                             TweenMax.to(this._heatRect.container,1.5,{"alpha":this.HEATRECTCONTAINERALPHA});
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr0476);
                                 }
                                 §§goto(addr0467);
                              }
                           }
                           §§goto(addr0463);
                        }
                        §§goto(addr040a);
                     }
                     §§goto(addr0089);
                  }
               }
               §§goto(addr0078);
            }
            §§goto(addr0063);
         }
         §§goto(addr009b);
      }
      
      public function get tempBMPdata() : BitmapData
      {
         return this._tempBMPdata;
      }
      
      public function get currentViewedType() : String
      {
         return this._currentViewedType;
      }
      
      public function hideRangeRect() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:IsoRectangle = null;
         if(_loc4_)
         {
            if(this._oldMousePoint)
            {
               if(!(_loc5_ && _loc2_))
               {
                  addr0042:
                  this._oldMousePoint.x = this._oldMousePoint.y = -1;
               }
            }
            for each(_loc1_ in this._rangeRects)
            {
               if(!_loc5_)
               {
                  _loc1_.container.visible = false;
               }
            }
            return;
         }
         §§goto(addr0042);
      }
   }
}

