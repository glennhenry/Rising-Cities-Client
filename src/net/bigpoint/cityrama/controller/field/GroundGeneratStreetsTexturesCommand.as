package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.StreetObjectVo;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.view.field.ground.ui.components.StreetObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class GroundGeneratStreetsTexturesCommand extends SimpleCommand
   {
      
      private var _pathwalkProxy:PathWalkProxy;
      
      private var playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      public function GroundGeneratStreetsTexturesCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            this.playfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         }
         var _loc4_:StreetObject = StreetObject(param1.getBody());
         §§push(_loc4_.streetObjectVo);
         if(_loc5_ || Boolean(_loc2_))
         {
            §§push(int(§§pop().matrix3dCoordinates.x));
            if(_loc5_ || Boolean(param1))
            {
               _loc2_ = §§pop();
               if(_loc5_ || Boolean(this))
               {
                  §§push(_loc4_.streetObjectVo);
                  if(!_loc6_)
                  {
                     §§push(int(§§pop().matrix3dCoordinates.y));
                     if(_loc5_ || Boolean(param1))
                     {
                        addr0095:
                        _loc3_ = §§pop();
                        if(_loc5_)
                        {
                           this.renewByCoordinates(_loc2_,_loc3_);
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              §§push(_loc4_.streetObjectVo);
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 §§push(int(§§pop().matrix3dCoordinates.x + 1));
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc5_ || Boolean(_loc3_))
                                    {
                                       §§push(_loc4_.streetObjectVo);
                                       if(!(_loc6_ && Boolean(this)))
                                       {
                                          addr00fd:
                                          §§push(int(§§pop().matrix3dCoordinates.y));
                                          if(_loc5_ || Boolean(this))
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc5_ || Boolean(_loc3_))
                                             {
                                                this.renewByCoordinates(_loc2_,_loc3_);
                                                if(_loc5_ || Boolean(param1))
                                                {
                                                   addr0142:
                                                   §§push(_loc4_.streetObjectVo);
                                                   if(!(_loc6_ && Boolean(this)))
                                                   {
                                                      §§push(§§pop().matrix3dCoordinates.x - 1);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc6_ && Boolean(_loc2_)))
                                                         {
                                                            addr0170:
                                                            _loc2_ = §§pop();
                                                            if(_loc5_ || Boolean(_loc2_))
                                                            {
                                                               §§push(_loc4_.streetObjectVo);
                                                               if(!(_loc6_ && Boolean(this)))
                                                               {
                                                                  addr0192:
                                                                  §§push(int(§§pop().matrix3dCoordinates.y));
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr019e:
                                                                     _loc3_ = §§pop();
                                                                     if(!(_loc6_ && Boolean(_loc2_)))
                                                                     {
                                                                        this.renewByCoordinates(_loc2_,_loc3_);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(_loc4_.streetObjectVo);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(int(§§pop().matrix3dCoordinates.x));
                                                                              if(_loc5_ || Boolean(_loc2_))
                                                                              {
                                                                                 addr01d9:
                                                                                 _loc2_ = §§pop();
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr01e0:
                                                                                    §§push(_loc4_.streetObjectVo);
                                                                                    if(!(_loc6_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       §§push(int(§§pop().matrix3dCoordinates.y + 1));
                                                                                       if(!(_loc6_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          if(_loc5_ || Boolean(_loc3_))
                                                                                          {
                                                                                             §§goto(addr0219);
                                                                                          }
                                                                                          §§goto(addr022e);
                                                                                       }
                                                                                       §§goto(addr0261);
                                                                                    }
                                                                                    §§goto(addr0275);
                                                                                 }
                                                                                 addr0219:
                                                                                 this.renewByCoordinates(_loc2_,_loc3_);
                                                                                 if(!(_loc6_ && Boolean(param1)))
                                                                                 {
                                                                                    addr022e:
                                                                                    §§push(_loc4_.streetObjectVo);
                                                                                    if(!(_loc6_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       addr0241:
                                                                                       §§push(int(§§pop().matrix3dCoordinates.x));
                                                                                       if(!(_loc6_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          addr0261:
                                                                                          _loc2_ = §§pop();
                                                                                          if(!(_loc6_ && Boolean(this)))
                                                                                          {
                                                                                             addr027c:
                                                                                             _loc3_ = _loc4_.streetObjectVo.matrix3dCoordinates.y - 1;
                                                                                             addr0275:
                                                                                             addr0270:
                                                                                             addr027b:
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                this.renewByCoordinates(_loc2_,_loc3_);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr028a);
                                                                                       }
                                                                                       §§goto(addr027c);
                                                                                    }
                                                                                    §§goto(addr0275);
                                                                                 }
                                                                                 §§goto(addr028a);
                                                                              }
                                                                              §§goto(addr0261);
                                                                           }
                                                                           §§goto(addr0241);
                                                                        }
                                                                        §§goto(addr028a);
                                                                     }
                                                                     §§goto(addr0270);
                                                                  }
                                                                  §§goto(addr0261);
                                                               }
                                                               §§goto(addr0241);
                                                            }
                                                            §§goto(addr01e0);
                                                         }
                                                         §§goto(addr027c);
                                                      }
                                                      §§goto(addr027b);
                                                   }
                                                   §§goto(addr0241);
                                                }
                                                addr028a:
                                                return;
                                             }
                                             §§goto(addr0219);
                                          }
                                          §§goto(addr019e);
                                       }
                                       §§goto(addr0192);
                                    }
                                    §§goto(addr0219);
                                 }
                                 §§goto(addr0170);
                              }
                              §§goto(addr00fd);
                           }
                           §§goto(addr0219);
                        }
                        §§goto(addr0142);
                     }
                     §§goto(addr01d9);
                  }
                  §§goto(addr00fd);
               }
               §§goto(addr0219);
            }
            §§goto(addr0095);
         }
         §§goto(addr0275);
      }
      
      private function getStreetAt(param1:int, param2:int) : StreetObjectVo
      {
         return this.playfieldObjectsProxy.getGameObjectByCuboid(new Cuboid(param1,param2,0,1,1,1)) as StreetObjectVo;
      }
      
      private function renewByCoordinates(param1:int, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:StreetObject = null;
         if(!_loc4_)
         {
            §§push(this.getStreetAt(param1,param2));
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(§§pop() == null);
               if(_loc5_ || Boolean(param1))
               {
                  §§push(!§§pop());
                  if(_loc5_ || Boolean(param1))
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006d);
               }
               addr0056:
               var _temp_5:* = §§pop();
               §§push(_temp_5);
               if(_temp_5)
               {
                  if(!_loc4_)
                  {
                     addr006d:
                     §§pop();
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§goto(addr0087);
                     }
                     §§goto(addr008b);
                  }
               }
               addr0087:
               §§goto(addr0083);
            }
            addr0083:
            if(this.getStreetAt(param1,param2) is StreetObjectVo)
            {
               addr008b:
               _loc3_ = this.playfieldObjectsProxy.getStreetObjectByVo(this.getStreetAt(param1,param2)) as StreetObject;
               if(_loc5_ || Boolean(this))
               {
                  if(_loc3_ != null)
                  {
                     if(_loc5_)
                     {
                        this.selectTextureByNeighbours(_loc3_);
                        if(_loc5_)
                        {
                           §§goto(addr00d7);
                        }
                        §§goto(addr00e4);
                     }
                     addr00d7:
                     this.chooseTexture(_loc3_);
                     if(!_loc4_)
                     {
                        addr00e4:
                        sendNotification(ApplicationNotificationConstants.GROUND_REDRAW_GROUNDOBJECT,_loc3_);
                     }
                  }
                  §§goto(addr00ef);
               }
               §§goto(addr00d7);
            }
            addr00ef:
            return;
         }
         §§goto(addr008b);
      }
      
      private function selectTextureByNeighbours(param1:StreetObject) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            §§push(param1.streetObjectVo);
            if(_loc5_)
            {
               §§push(int(§§pop().matrix3dCoordinates.x));
               if(!_loc4_)
               {
                  _loc2_ = §§pop();
                  if(_loc5_)
                  {
                     §§push(param1.streetObjectVo);
                     if(_loc5_)
                     {
                        §§push(int(§§pop().matrix3dCoordinates.y));
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0065:
                           _loc3_ = §§pop();
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              §§push(param1.streetObjectVo);
                              if(!_loc4_)
                              {
                                 §§push(int(§§pop().matrix3dCoordinates.x + 1));
                                 if(_loc5_ || Boolean(_loc2_))
                                 {
                                    _loc2_ = §§pop();
                                    if(!_loc4_)
                                    {
                                       §§push(param1.streetObjectVo);
                                       if(_loc5_ || Boolean(this))
                                       {
                                          §§push(int(§§pop().matrix3dCoordinates.y));
                                          if(!(_loc4_ && Boolean(_loc2_)))
                                          {
                                             _loc3_ = §§pop();
                                             if(!_loc4_)
                                             {
                                                §§push(this.playfieldObjectsProxy);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop().getGameObjectByCuboid(new Cuboid(_loc2_,_loc3_,0,1,1,1)));
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop() is StreetObjectVo);
                                                      if(_loc5_ || Boolean(this))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc5_ || Boolean(_loc2_))
                                                            {
                                                               §§push(param1.streetObjectVo);
                                                               if(_loc5_ || Boolean(_loc2_))
                                                               {
                                                                  addr0122:
                                                                  §§push(true);
                                                                  if(_loc5_ || Boolean(param1))
                                                                  {
                                                                     §§pop().o = §§pop();
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr0160:
                                                                        §§push(param1.streetObjectVo);
                                                                        if(!(_loc4_ && Boolean(_loc2_)))
                                                                        {
                                                                           §§push(§§pop().matrix3dCoordinates.x - 1);
                                                                           if(!(_loc4_ && Boolean(this)))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc4_)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 if(!(_loc4_ && Boolean(this)))
                                                                                 {
                                                                                    addr019c:
                                                                                    §§push(param1.streetObjectVo);
                                                                                    if(_loc5_ || Boolean(this))
                                                                                    {
                                                                                       addr01ae:
                                                                                       §§push(int(§§pop().matrix3dCoordinates.y));
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr01ba:
                                                                                          _loc3_ = §§pop();
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr01c1:
                                                                                             §§push(this.playfieldObjectsProxy);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop().getGameObjectByCuboid(new Cuboid(_loc2_,_loc3_,0,1,1,1)));
                                                                                                if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                {
                                                                                                   §§push(§§pop() is StreetObjectVo);
                                                                                                   if(_loc5_ || Boolean(this))
                                                                                                   {
                                                                                                      addr020b:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(param1.streetObjectVo);
                                                                                                            if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§pop().w = §§pop();
                                                                                                                  if(_loc5_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     addr0265:
                                                                                                                     §§push(param1.streetObjectVo);
                                                                                                                     if(!(_loc4_ && Boolean(param1)))
                                                                                                                     {
                                                                                                                        §§push(int(§§pop().matrix3dCoordinates.x));
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr0283:
                                                                                                                           _loc2_ = §§pop();
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§push(param1.streetObjectVo);
                                                                                                                              if(_loc5_ || Boolean(_loc3_))
                                                                                                                              {
                                                                                                                                 addr029c:
                                                                                                                                 §§push(int(§§pop().matrix3dCoordinates.y + 1));
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    addr02ab:
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    if(_loc5_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       addr02ba:
                                                                                                                                       §§push(this.playfieldObjectsProxy);
                                                                                                                                       if(_loc5_ || Boolean(_loc2_))
                                                                                                                                       {
                                                                                                                                          addr02cc:
                                                                                                                                          §§push(§§pop().getGameObjectByCuboid(new Cuboid(_loc2_,_loc3_,0,1,1,1)));
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() is StreetObjectVo);
                                                                                                                                             if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr0301:
                                                                                                                                                      §§push(param1.streetObjectVo);
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         addr030b:
                                                                                                                                                         §§push(true);
                                                                                                                                                         if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                                                                         {
                                                                                                                                                            addr031a:
                                                                                                                                                            §§pop().n = §§pop();
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               addr0351:
                                                                                                                                                               §§push(param1.streetObjectVo);
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  addr035b:
                                                                                                                                                                  §§push(int(§§pop().matrix3dCoordinates.x));
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr0367:
                                                                                                                                                                     _loc2_ = §§pop();
                                                                                                                                                                     if(_loc5_ || Boolean(_loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr0376:
                                                                                                                                                                        §§push(param1.streetObjectVo);
                                                                                                                                                                        if(!(_loc4_ && Boolean(param1)))
                                                                                                                                                                        {
                                                                                                                                                                           addr038f:
                                                                                                                                                                           _loc3_ = §§pop().matrix3dCoordinates.y - 1;
                                                                                                                                                                           addr0388:
                                                                                                                                                                           addr038e:
                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              addr03c1:
                                                                                                                                                                              addr03ad:
                                                                                                                                                                              addr039a:
                                                                                                                                                                              addr0396:
                                                                                                                                                                              if(this.playfieldObjectsProxy.getGameObjectByCuboid(new Cuboid(_loc2_,_loc3_,0,1,1,1)) is StreetObjectVo)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr03cb:
                                                                                                                                                                                    §§push(param1.streetObjectVo);
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr03d5:
                                                                                                                                                                                       §§push(true);
                                                                                                                                                                                       if(_loc5_ || Boolean(param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr03e4:
                                                                                                                                                                                          §§pop().s = §§pop();
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr03f6:
                                                                                                                                                                                          §§pop().s = §§pop();
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr03f9);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr03f5:
                                                                                                                                                                                       §§push(false);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr03f6);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr03f9);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.streetObjectVo);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr03f5);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr03cb);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr03d5);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr03f9);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr038f);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr03d5);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0376);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr03e4);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0388);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr03f9);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(param1.streetObjectVo);
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      §§push(false);
                                                                                                                                                      if(_loc5_ || Boolean(param1))
                                                                                                                                                      {
                                                                                                                                                         addr0340:
                                                                                                                                                         §§pop().n = §§pop();
                                                                                                                                                         if(_loc5_ || Boolean(this))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr0351);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0376);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr03f6);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr03f5);
                                                                                                                                             }
                                                                                                                                             §§goto(addr03c1);
                                                                                                                                          }
                                                                                                                                          §§goto(addr03ad);
                                                                                                                                       }
                                                                                                                                       §§goto(addr039a);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0376);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0367);
                                                                                                                              }
                                                                                                                              §§goto(addr030b);
                                                                                                                           }
                                                                                                                           §§goto(addr0396);
                                                                                                                        }
                                                                                                                        §§goto(addr0367);
                                                                                                                     }
                                                                                                                     §§goto(addr029c);
                                                                                                                  }
                                                                                                                  §§goto(addr03f9);
                                                                                                               }
                                                                                                               §§goto(addr031a);
                                                                                                            }
                                                                                                            §§goto(addr030b);
                                                                                                         }
                                                                                                         §§goto(addr03f9);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(param1.streetObjectVo);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr024d:
                                                                                                            §§push(false);
                                                                                                            if(_loc5_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               §§pop().w = §§pop();
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§goto(addr0265);
                                                                                                               }
                                                                                                               §§goto(addr02ba);
                                                                                                            }
                                                                                                            §§goto(addr031a);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr029c);
                                                                                                   }
                                                                                                   §§goto(addr03c1);
                                                                                                }
                                                                                                §§goto(addr03ad);
                                                                                             }
                                                                                             §§goto(addr02cc);
                                                                                          }
                                                                                          §§goto(addr0396);
                                                                                       }
                                                                                       §§goto(addr0283);
                                                                                    }
                                                                                    §§goto(addr035b);
                                                                                 }
                                                                                 §§goto(addr0376);
                                                                              }
                                                                              §§goto(addr02ab);
                                                                           }
                                                                           §§goto(addr038e);
                                                                        }
                                                                        §§goto(addr03d5);
                                                                     }
                                                                     §§goto(addr0351);
                                                                  }
                                                                  §§goto(addr03f6);
                                                               }
                                                               §§goto(addr01ae);
                                                            }
                                                            §§goto(addr0301);
                                                         }
                                                         else
                                                         {
                                                            §§push(param1.streetObjectVo);
                                                            if(_loc5_)
                                                            {
                                                               addr0148:
                                                               §§push(false);
                                                               if(!_loc4_)
                                                               {
                                                                  §§pop().o = §§pop();
                                                                  if(!(_loc4_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§goto(addr0160);
                                                                  }
                                                                  §§goto(addr01c1);
                                                               }
                                                               §§goto(addr0340);
                                                            }
                                                         }
                                                         §§goto(addr03d5);
                                                      }
                                                      §§goto(addr020b);
                                                   }
                                                   §§goto(addr03ad);
                                                }
                                                §§goto(addr02cc);
                                             }
                                             §§goto(addr0351);
                                          }
                                          §§goto(addr01ba);
                                       }
                                       §§goto(addr0122);
                                    }
                                    §§goto(addr0351);
                                 }
                                 §§goto(addr038f);
                              }
                              §§goto(addr024d);
                           }
                           §§goto(addr019c);
                        }
                        §§goto(addr0367);
                     }
                     §§goto(addr0388);
                  }
                  §§goto(addr0351);
               }
               §§goto(addr0065);
            }
            §§goto(addr0148);
         }
         addr03f9:
      }
      
      private function chooseTexture(param1:StreetObject) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2921
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}

