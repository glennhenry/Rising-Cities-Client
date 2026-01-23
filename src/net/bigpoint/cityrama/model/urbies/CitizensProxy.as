package net.bigpoint.cityrama.model.urbies
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.data.XMLLoaderVars;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadServiceProxy;
   import net.bigpoint.cityrama.model.urbies.vo.FramesetVo;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeConfigVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.field3d.interfaces.IObject3D;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CitizensProxy extends Proxy implements IProxy
   {
      
      public static const MOOD_SAD:String = "sad";
      
      public static const MOOD_HAPPY:String = "happy";
      
      public static const MOOD_NEUTRAL:String = "neutral";
      
      public static const NAME:String = "CitizensProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         MOOD_SAD = "sad";
         if(!(_loc1_ && _loc1_))
         {
            MOOD_HAPPY = "happy";
            if(_loc2_ || _loc1_)
            {
               §§goto(addr0056);
            }
            §§goto(addr006c);
         }
         addr0056:
         MOOD_NEUTRAL = "neutral";
         if(!(_loc1_ && CitizensProxy))
         {
            addr006c:
            NAME = "CitizensProxy";
         }
         §§goto(addr0073);
      }
      addr0073:
      
      private var XML_CV_MASK:String = "xml#citizens?xml";
      
      private var _loaderQueue:LoaderMax;
      
      private var _xmlLoader:DataLoader;
      
      private var _fileRuntimeServiceProxy:FileRuntimeLoadServiceProxy;
      
      private var _globalBlanceProxy:GlobalBalanceProxy;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _citizenBatch_sad:Vector.<UrbieLifeConfigVo>;
      
      private var _citizenBatch_happy:Vector.<UrbieLifeConfigVo>;
      
      private var _citizenBatch_normal:Vector.<UrbieLifeConfigVo>;
      
      private var _citizenBatch_event:Vector.<UrbieLifeConfigVo>;
      
      private var _citizenBatch_playfieldObjects:Vector.<UrbieLifeConfigVo>;
      
      private var _loaded:Boolean = false;
      
      private var _loading:Boolean = false;
      
      private var _carBatch:Vector.<UrbieLifeConfigVo>;
      
      private var _carEventBatch:Vector.<UrbieLifeConfigVo>;
      
      private var _carBatch_playfieldObjects:Vector.<UrbieLifeConfigVo>;
      
      private var _pfoCustomCitizenTagsFound:Dictionary;
      
      private var _pfoCustomCitizenTagsSpawned:Dictionary;
      
      private var _pfoCustomCarTagsFound:Dictionary;
      
      private var _pfoCustomCarTagsSpawned:Dictionary;
      
      public function CitizensProxy(param1:Object = null)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._loaderQueue = new LoaderMax();
            if(!_loc3_)
            {
               super(NAME,param1);
            }
         }
      }
      
      public function startLoad() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:CvTagProxy = facade.retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
         if(_loc3_)
         {
            this._loaded = false;
            if(_loc3_ || _loc2_)
            {
               this._loading = true;
            }
         }
         §§push(_loc1_.getCvTagPath(this.XML_CV_MASK));
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            this._xmlLoader = new DataLoader(this.flashVarsProxy.path + _loc2_,new XMLLoaderVars().name(this.XML_CV_MASK).noCache(false));
            if(!_loc4_)
            {
               addr009d:
               §§push(this._loaderQueue);
               if(!_loc4_)
               {
                  §§pop().append(this._xmlLoader);
                  if(_loc3_ || _loc2_)
                  {
                     this.configureListener();
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr00e2:
                        this._loaderQueue.load();
                        addr00de:
                     }
                     return;
                  }
                  §§goto(addr00de);
               }
               §§goto(addr00e2);
            }
            §§goto(addr00de);
         }
         §§goto(addr009d);
      }
      
      private function configureListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this._loaderQueue);
            if(!(_loc1_ && Boolean(this)))
            {
               §§push(LoaderEvent.COMPLETE);
               if(_loc2_ || Boolean(this))
               {
                  §§pop().addEventListener(§§pop(),this.onComplete);
                  if(!(_loc1_ && _loc2_))
                  {
                     addr006b:
                     §§push(this._loaderQueue);
                     if(_loc2_)
                     {
                        §§push(LoaderEvent.IO_ERROR);
                        if(!_loc1_)
                        {
                           addr007f:
                           §§pop().addEventListener(§§pop(),this.onError);
                           if(_loc2_)
                           {
                              addr0096:
                              this._loaderQueue.addEventListener(LoaderEvent.SECURITY_ERROR,this.onError);
                              addr0090:
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr0090);
                  }
                  addr009e:
                  return;
               }
               §§goto(addr007f);
            }
            §§goto(addr0090);
         }
         §§goto(addr006b);
      }
      
      private function onError(param1:*) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§findproperty(sendNotification));
            §§push(ApplicationNotificationConstants.ERROR);
            §§push("CitizensProxy:onError(");
            if(!_loc3_)
            {
               §§push(§§pop() + param1);
               if(!_loc3_)
               {
                  addr0042:
                  §§push(§§pop() + ")");
               }
               §§pop().sendNotification(§§pop(),§§pop());
               §§goto(addr0049);
            }
            §§goto(addr0042);
         }
         addr0049:
      }
      
      private function onComplete(param1:LoaderEvent) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = null;
         if(!(_loc7_ && Boolean(this)))
         {
            super.setData(new XML(LoaderMax.getContent(this.XML_CV_MASK)));
         }
         var _loc2_:* = "<xml><LoaderMax maxConnections=\"2\" load=\"false\">";
         var _loc4_:* = 0;
         var _loc5_:* = this.xml..texture.text();
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc5_,_loc4_));
            if(_loc7_ && Boolean(this))
            {
               break;
            }
            if(!§§pop())
            {
               if(_loc6_ || Boolean(_loc2_))
               {
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     if(!(_loc7_ && Boolean(_loc2_)))
                     {
                        §§push(0);
                        if(!(_loc7_ && Boolean(this)))
                        {
                           _loc4_ = §§pop();
                           if(!_loc7_)
                           {
                              addr0131:
                              _loc5_ = this.xml..sheet.image.text();
                              if(!(_loc7_ && Boolean(_loc3_)))
                              {
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc5_,_loc4_));
                                    if(_loc6_)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 loop3:
                                 while(§§pop())
                                 {
                                    §§push(§§nextvalue(_loc4_,_loc5_));
                                    if(!_loc7_)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc6_)
                                       {
                                          addr0245:
                                          §§push(_loc2_ + "<ImageLoader noCache=\"false\" name=\"");
                                          if(_loc6_ || Boolean(_loc2_))
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc7_ && Boolean(_loc2_)))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc6_ || Boolean(_loc2_))
                                                {
                                                   §§push("\" url=\"");
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc6_)
                                                      {
                                                         §§push(this.flashVarsProxy.path);
                                                         if(_loc6_)
                                                         {
                                                            addr02a5:
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc7_)
                                                            {
                                                               addr029a:
                                                               addr0299:
                                                               §§push(§§pop() + _loc3_);
                                                               if(!_loc7_)
                                                               {
                                                                  addr02a4:
                                                                  §§push(§§pop() + "\" />");
                                                               }
                                                            }
                                                            _loc2_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc5_,_loc4_));
                                                               continue loop3;
                                                            }
                                                            break;
                                                            addr02a6:
                                                         }
                                                         §§goto(addr029a);
                                                      }
                                                      §§goto(addr0299);
                                                   }
                                                   §§goto(addr02a4);
                                                }
                                                §§goto(addr0299);
                                             }
                                             §§goto(addr029a);
                                          }
                                          §§goto(addr02a5);
                                       }
                                       §§goto(addr02a6);
                                    }
                                    §§goto(addr0245);
                                 }
                                 addr02af:
                                 if(!_loc7_)
                                 {
                                    _loc2_ += "</LoaderMax></xml>";
                                    if(!_loc7_)
                                    {
                                       this.fileRuntimeServiceProxy.service.addLoaderByXML(new XML(_loc2_));
                                       if(_loc6_ || Boolean(this))
                                       {
                                          addr02f5:
                                          this._loaded = true;
                                          if(!_loc7_)
                                          {
                                             addr0300:
                                             this._loading = false;
                                          }
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr02f5);
                                 addr01c8:
                                 addr02ad:
                                 addr02a9:
                              }
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr0177:
                                 while(true)
                                 {
                                    §§push(§§pop() + "<ImageLoader noCache=\"false\" name=\"");
                                    if(_loc6_)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc6_ || Boolean(_loc3_))
                                          {
                                             §§push("\" url=\"");
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc7_)
                                                {
                                                   addr01a7:
                                                   §§push(this.flashVarsProxy.path);
                                                   if(!_loc7_)
                                                   {
                                                      addr01b4:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc7_)
                                                      {
                                                         addr01bc:
                                                         addr01c7:
                                                         §§push(§§pop() + _loc3_);
                                                         if(_loc6_)
                                                         {
                                                            addr01c3:
                                                            addr01c6:
                                                            §§push(§§pop() + "\" />");
                                                         }
                                                         _loc2_ = §§pop();
                                                         §§goto(addr01c8);
                                                      }
                                                      §§goto(addr01c3);
                                                   }
                                                   §§goto(addr01bc);
                                                }
                                                §§goto(addr01c7);
                                             }
                                             §§goto(addr01c6);
                                          }
                                          §§goto(addr01c3);
                                       }
                                       §§goto(addr01b4);
                                    }
                                    §§goto(addr01a7);
                                 }
                              }
                              addr0176:
                           }
                           addr01eb:
                           if(!(_loc7_ && Boolean(this)))
                           {
                              addr01fd:
                              _loc4_ = 0;
                              if(_loc6_ || Boolean(this))
                              {
                                 _loc5_ = this.xml..light.image.text();
                                 if(_loc6_ || Boolean(_loc2_))
                                 {
                                 }
                                 §§goto(addr02a6);
                              }
                              §§goto(addr02af);
                           }
                           §§goto(addr02f5);
                        }
                        §§goto(addr01fd);
                     }
                     §§goto(addr0300);
                  }
                  §§goto(addr0131);
               }
               addr01e3:
               if(_loc6_)
               {
                  §§goto(addr01eb);
               }
               §§goto(addr02af);
            }
            else
            {
               §§push(§§nextvalue(_loc4_,_loc5_));
               if(!_loc7_)
               {
                  _loc3_ = §§pop();
                  if(!_loc6_)
                  {
                     continue;
                  }
                  §§push(_loc2_);
               }
               §§push(§§pop() + "<ImageLoader noCache=\"false\" name=\"");
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  §§push(_loc3_);
                  if(_loc6_ || Boolean(this))
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc6_)
                     {
                        §§push("\" url=\"");
                        if(_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc7_ && Boolean(param1)))
                           {
                              §§push(this.flashVarsProxy.path);
                              if(_loc6_)
                              {
                                 addr00ba:
                                 §§push(§§pop() + §§pop());
                                 if(!_loc7_)
                                 {
                                    addr00c2:
                                    addr00d5:
                                    addr00c1:
                                    §§push(§§pop() + _loc3_);
                                    if(!(_loc7_ && Boolean(param1)))
                                    {
                                       addr00d1:
                                       addr00d4:
                                       §§push(§§pop() + "\" />");
                                    }
                                    _loc2_ = §§pop();
                                    continue;
                                 }
                                 §§goto(addr00d1);
                              }
                              §§goto(addr00c2);
                           }
                           §§goto(addr00d5);
                        }
                        §§goto(addr00d4);
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr00ba);
               }
               §§goto(addr00c1);
            }
         }
         while(true)
         {
            if(!§§pop())
            {
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  §§goto(addr01e3);
               }
               §§goto(addr02ad);
            }
            else
            {
               §§push(§§nextvalue(_loc4_,_loc5_));
               if(_loc6_)
               {
                  _loc3_ = §§pop();
                  if(_loc6_)
                  {
                     §§goto(addr0176);
                  }
                  §§goto(addr01c8);
               }
               §§goto(addr0177);
            }
         }
         §§goto(addr02a9);
      }
      
      public function get xml() : XML
      {
         return super.data as XML;
      }
      
      public function getConfigByDependingGfxID(param1:Number) : UrbieLifeConfigVo
      {
         var gfxID:Number;
         var result:UrbieLifeConfigVo;
         var citizensGFX:XML;
         var citizen:XML;
         var textures:XMLList;
         var iteration:int;
         var texture:XML;
         var frameset:XML;
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc8_ && _loc2_))
         {
            §§push(null);
            if(!_loc8_)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc9_)
               {
                  §§push(§§newactivation());
                  if(_loc9_ || Boolean(this))
                  {
                     §§push(null);
                     if(!(_loc8_ && Boolean(param1)))
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(!(_loc8_ && Boolean(param1)))
                        {
                           §§push(§§newactivation());
                           if(_loc9_)
                           {
                              §§push(null);
                              if(_loc9_ || Boolean(this))
                              {
                                 addr0084:
                                 §§pop().§§slot[4] = §§pop();
                                 if(_loc9_)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc9_)
                                    {
                                       §§push(null);
                                       if(!_loc8_)
                                       {
                                          §§pop().§§slot[5] = §§pop();
                                          if(_loc9_ || _loc3_)
                                          {
                                             addr00b1:
                                             §§push(§§newactivation());
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                §§push(0);
                                                if(_loc9_ || Boolean(param1))
                                                {
                                                   §§pop().§§slot[6] = §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§push(null);
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            addr00f8:
                                                            §§pop().§§slot[7] = §§pop();
                                                            if(_loc9_ || _loc2_)
                                                            {
                                                               addr010b:
                                                               §§push(§§newactivation());
                                                               if(!_loc8_)
                                                               {
                                                                  addr0114:
                                                                  §§pop().§§slot[8] = null;
                                                                  if(_loc9_)
                                                                  {
                                                                     addr011f:
                                                                     §§push(§§newactivation());
                                                                     if(_loc9_)
                                                                     {
                                                                        addr0127:
                                                                        §§pop().§§slot[1] = param1;
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§goto(addr0146);
                                                                        }
                                                                        §§goto(addr0144);
                                                                     }
                                                                     §§goto(addr0146);
                                                                  }
                                                                  §§goto(addr0144);
                                                               }
                                                               addr0146:
                                                               §§goto(addr0130);
                                                            }
                                                            §§goto(addr0144);
                                                         }
                                                         §§goto(addr0114);
                                                      }
                                                      §§goto(addr0127);
                                                   }
                                                   addr0130:
                                                   §§goto(addr0148);
                                                }
                                                addr0148:
                                                §§push(§§newactivation());
                                                if(_loc9_)
                                                {
                                                   §§pop().§§slot[2] = new UrbieLifeConfigVo();
                                                   addr0144:
                                                   §§push(§§newactivation());
                                                }
                                                §§pop().§§slot[3] = this.xml..requires.building.(if(!_loc8_)
                                                {
                                                   if(@gfxID != gfxID.toString())
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(_loc8_ && _loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                },_loc3_[_loc4_] = _loc6_,false)[0];
                                                if(_loc9_)
                                                {
                                                   if(_loc9_ || Boolean(param1))
                                                   {
                                                      if(!(_loc8_ && Boolean(param1)))
                                                      {
                                                         §§pop().§§slot[4] = §§pop().§§slot[3].parent().parent();
                                                         if(!_loc8_)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               addr0201:
                                                               §§pop().§§slot[5] = §§pop().§§slot[4].textures.texture;
                                                               if(!_loc8_)
                                                               {
                                                                  if(_loc9_ || Boolean(param1))
                                                                  {
                                                                     if(§§pop().§§slot[5].length())
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              §§pop().§§slot[6] = 1;
                                                                              if(_loc9_ || this.xml..requires.building.(if(!_loc8_)
                                                                              {
                                                                                 if(@gfxID != gfxID.toString())
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 if(_loc8_ && _loc2_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                              },_loc3_[_loc4_] = _loc6_,false))
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc9_ || Boolean(this))
                                                                                 {
                                                                                    var _loc3_:* = §§pop();
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(!(_loc8_ && Boolean(this)))
                                                                                       {
                                                                                          var _loc4_:* = §§pop().§§slot[5];
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             loop4:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc4_,this.xml..requires.building.(if(!_loc8_)
                                                                                                {
                                                                                                   if(@gfxID != gfxID.toString())
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   if(_loc8_ && _loc2_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                },_loc3_[_loc4_] = _loc6_,false)));
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr0753:
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               addr0acf:
                                                                                                               if(_loc9_ || Boolean(param1))
                                                                                                               {
                                                                                                                  addr0adf:
                                                                                                                  §§push(§§pop().§§slot[2]);
                                                                                                                  if(!(_loc8_ && Boolean(param1)))
                                                                                                                  {
                                                                                                                     addr0aef:
                                                                                                                     §§pop().rows = int(§§pop().§§slot[4].@row.toString());
                                                                                                                     if(!(_loc8_ && this.xml..requires.building.(if(!_loc8_)
                                                                                                                     {
                                                                                                                        if(@gfxID != gfxID.toString())
                                                                                                                        {
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        if(_loc8_ && _loc2_)
                                                                                                                        {
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                     },_loc3_[_loc4_] = _loc6_,false)))
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr0b20:
                                                                                                                           §§push(§§pop().§§slot[2]);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§pop().offset = new Point(int(§§pop().§§slot[4].@offsetX.toString()),int(§§pop().§§slot[4].@offsetY.toString()));
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 §§goto(addr0b64);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr0b75:
                                                                                                                              }
                                                                                                                              addr0b75:
                                                                                                                              §§goto(addr0b77);
                                                                                                                           }
                                                                                                                           §§goto(addr0b74);
                                                                                                                        }
                                                                                                                        §§goto(addr0b77);
                                                                                                                     }
                                                                                                                     addr0b64:
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        addr0b6c:
                                                                                                                        §§push(§§pop().§§slot[2]);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           §§goto(addr0b74);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0b77:
                                                                                                                        §§push(§§pop().§§slot[2]);
                                                                                                                     }
                                                                                                                     §§goto(addr0b79);
                                                                                                                  }
                                                                                                                  §§goto(addr0b74);
                                                                                                               }
                                                                                                               §§goto(addr0b20);
                                                                                                            }
                                                                                                            §§goto(addr0b75);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0a55:
                                                                                                            if(!(_loc8_ && Boolean(this)))
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  addr0a6d:
                                                                                                                  §§push(§§pop().§§slot[2]);
                                                                                                                  if(_loc9_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr0a7d:
                                                                                                                     §§pop().fps = int(§§pop().§§slot[4].@fps.toString());
                                                                                                                     if(_loc9_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr0a9e:
                                                                                                                        if(!(_loc8_ && Boolean(param1)))
                                                                                                                        {
                                                                                                                           addr0aae:
                                                                                                                           §§push(§§pop().§§slot[2]);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              addr0ab6:
                                                                                                                              §§pop().columns = int(§§pop().§§slot[4].@col.toString());
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 §§goto(addr0acf);
                                                                                                                              }
                                                                                                                              §§goto(addr0b75);
                                                                                                                           }
                                                                                                                           §§goto(addr0b74);
                                                                                                                        }
                                                                                                                        §§goto(addr0b20);
                                                                                                                     }
                                                                                                                     §§goto(addr0acf);
                                                                                                                  }
                                                                                                                  §§goto(addr0b79);
                                                                                                               }
                                                                                                               §§goto(addr0b20);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0b64);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0a53:
                                                                                                      }
                                                                                                      §§goto(addr0a55);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§pop().§§slot[7] = §§nextvalue(this.xml..requires.building.(if(!_loc8_)
                                                                                                         {
                                                                                                            if(@gfxID != gfxID.toString())
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            if(_loc8_ && _loc2_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                         },_loc3_[_loc4_] = _loc6_,false),_loc4_);
                                                                                                         if(!(_loc8_ && Boolean(this)))
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§pop().§§slot[2] = new UrbieLifeConfigVo();
                                                                                                               if(!(_loc8_ && Boolean(this)))
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     addr02cf:
                                                                                                                     §§push(§§pop().§§slot[2]);
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§pop().id = §§pop().§§slot[4].@id.toString();
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(§§pop().§§slot[4].requires)
                                                                                                                                 {
                                                                                                                                    if(_loc9_ || this.xml..requires.building.(if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       if(@gfxID != gfxID.toString())
                                                                                                                                       {
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       if(_loc8_ && _loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                    },_loc3_[_loc4_] = _loc6_,false))
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          if(§§pop().§§slot[4].requires.building.length())
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ && Boolean(param1)))
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ && this.xml..requires.building.(if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   if(@gfxID != gfxID.toString())
                                                                                                                                                   {
                                                                                                                                                      continue loop0;
                                                                                                                                                   }
                                                                                                                                                   if(_loc8_ && _loc2_)
                                                                                                                                                   {
                                                                                                                                                      continue loop0;
                                                                                                                                                   }
                                                                                                                                                },_loc3_[_loc4_] = _loc6_,false)))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().§§slot[2]);
                                                                                                                                                   if(_loc9_ || this.xml..requires.building.(if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(@gfxID != gfxID.toString())
                                                                                                                                                      {
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      if(_loc8_ && _loc2_)
                                                                                                                                                      {
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                   },_loc3_[_loc4_] = _loc6_,false))
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_ || this.xml..requires.building.(if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         if(@gfxID != gfxID.toString())
                                                                                                                                                         {
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                         if(_loc8_ && _loc2_)
                                                                                                                                                         {
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                      },_loc3_[_loc4_] = _loc6_,false))
                                                                                                                                                      {
                                                                                                                                                         §§pop().requiredBuilding = §§pop().§§slot[4].requires.building.@gfxID[0].toString();
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            addr038a:
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               addr0392:
                                                                                                                                                               §§push(§§pop().§§slot[2]);
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     addr03a2:
                                                                                                                                                                     §§pop().animationClass = §§pop().§§slot[4].@animation.toString();
                                                                                                                                                                     if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_ || Boolean(this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().§§slot[2]);
                                                                                                                                                                           if(_loc8_ && _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              addr03e4:
                                                                                                                                                                              §§pop().lightingPath = §§pop().§§slot[4].light.image.text().toString();
                                                                                                                                                                              if(_loc9_ || Boolean(this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr0405:
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr040d:
                                                                                                                                                                                    §§push(§§pop().§§slot[2]);
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc8_ && Boolean(this)))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().lightingData = §§pop().§§slot[4].light.data.text().toString();
                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                if(_loc9_ || Boolean(param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc9_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().sheetPath = §§pop().§§slot[4].sheet.image.text().toString();
                                                                                                                                                                                                      if(_loc9_ || Boolean(param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc9_ || this.xml..requires.building.(if(!_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(@gfxID != gfxID.toString())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop0;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc8_ && _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop0;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         },_loc3_[_loc4_] = _loc6_,false))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr049f:
                                                                                                                                                                                                            §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                            if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr04af:
                                                                                                                                                                                                               if(_loc9_ || this.xml..requires.building.(if(!_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(@gfxID != gfxID.toString())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop0;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc8_ && _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop0;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               },_loc3_[_loc4_] = _loc6_,false))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().sheetData = §§pop().§§slot[4].sheet.data.text().toString();
                                                                                                                                                                                                                  if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr04e0:
                                                                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                        if(_loc8_ && Boolean(param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc9_ || Boolean(param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().texturePath = §§pop().§§slot[7].text().toString();
                                                                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr051b:
                                                                                                                                                                                                                              if(_loc9_ || Boolean(param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr0533:
                                                                                                                                                                                                                                    if(!(_loc8_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr0543:
                                                                                                                                                                                                                                       §§push(§§pop().§§slot[6]);
                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          var _temp_55:* = §§pop();
                                                                                                                                                                                                                                          §§push(_temp_55);
                                                                                                                                                                                                                                          §§push(_temp_55);
                                                                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + 1);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          var _temp_56:* = §§pop();
                                                                                                                                                                                                                                          §§pop().§§slot[6] = _temp_56;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().iteration = §§pop();
                                                                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr0561:
                                                                                                                                                                                                                                          var _loc5_:int = 0;
                                                                                                                                                                                                                                          if(_loc9_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             var _loc6_:* = §§pop().§§slot[4].animations.frameset;
                                                                                                                                                                                                                                             if(_loc8_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             for each(_loc5_ in _loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().§§slot[8] = _loc5_;
                                                                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().§§slot[2].frameset[§§pop().§§slot[8].@id.toString()] = new FramesetVo(int(§§pop().§§slot[8].@start.toString()),int(§§pop().§§slot[8].@end.toString()),int(§§pop().§§slot[8].@playback.toString()));
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc9_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr0616:
                                                                                                                                                                                                                                             if(!(_loc8_ && Boolean(this)))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr0626:
                                                                                                                                                                                                                                                §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().fps = int(§§pop().§§slot[4].@fps.toString());
                                                                                                                                                                                                                                                   if(!_loc8_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr0647:
                                                                                                                                                                                                                                                      if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr0657:
                                                                                                                                                                                                                                                         §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                                                         if(_loc9_ || _loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr0667:
                                                                                                                                                                                                                                                            §§pop().columns = int(§§pop().§§slot[4].@col.toString());
                                                                                                                                                                                                                                                            if(!(_loc8_ && Boolean(this)))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc9_ || _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     loop8:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                                                                        if(_loc9_ || Boolean(param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().rows = int(§§pop().§§slot[4].@row.toString());
                                                                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 loop10:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       loop11:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop().offset = new Point(int(§§pop().§§slot[4].@offsetX.toString()),int(§§pop().§§slot[4].@offsetY.toString()));
                                                                                                                                                                                                                                                                                                if(!(_loc8_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(!(_loc8_ && _loc2_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr0735:
                                                                                                                                                                                                                                                                                                   §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                                                                                                   break loop11;
                                                                                                                                                                                                                                                                                                   addr0707:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             break loop8;
                                                                                                                                                                                                                                                                                             addr06d1:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                       addr06c9:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr0717:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break loop10;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr0721:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop().terrain = §§pop().§§slot[4].@terrain.toString();
                                                                                                                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break loop8;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop4;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                 addr06c1:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop4;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           break loop4;
                                                                                                                                                                                                                                                                           addr06a8:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr06d1);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr0733:
                                                                                                                                                                                                                                                                     §§goto(addr0735);
                                                                                                                                                                                                                                                                     addr0698:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr0717);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr0688:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr0707);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr06a8);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr06c9);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr06c1);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr06a8);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0735);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr0647);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0707);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0721);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr06d1);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr0657);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0616);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0543);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0735);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr0561);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0543);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr071f);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0735);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0647);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0721);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0667);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0698);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr051b);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0721);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0667);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0626);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0733);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0721);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr040d);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0405);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0543);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr071f);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr06c9);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr04e0);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr03a2);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04af);
                                                                                                                                                }
                                                                                                                                                §§goto(addr049f);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0688);
                                                                                                                                          }
                                                                                                                                          §§goto(addr038a);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0392);
                                                                                                                                    }
                                                                                                                                    §§goto(addr06c1);
                                                                                                                                 }
                                                                                                                                 §§goto(addr038a);
                                                                                                                              }
                                                                                                                              §§goto(addr0717);
                                                                                                                           }
                                                                                                                           §§goto(addr0733);
                                                                                                                        }
                                                                                                                        §§goto(addr03e4);
                                                                                                                     }
                                                                                                                     §§goto(addr0533);
                                                                                                                  }
                                                                                                                  §§goto(addr0626);
                                                                                                               }
                                                                                                               §§goto(addr0561);
                                                                                                            }
                                                                                                            §§goto(addr02cf);
                                                                                                         }
                                                                                                         §§goto(addr0688);
                                                                                                      }
                                                                                                      §§goto(addr0717);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop6:
                                                                                                   while(§§pop())
                                                                                                   {
                                                                                                      if(_loc9_ || this.xml..requires.building.(if(!_loc8_)
                                                                                                      {
                                                                                                         if(@gfxID != gfxID.toString())
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         if(_loc8_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                      },_loc3_[_loc4_] = _loc6_,false))
                                                                                                      {
                                                                                                         §§pop().§§slot[8] = §§nextvalue(this.xml..requires.building.(if(!_loc8_)
                                                                                                         {
                                                                                                            if(@gfxID != gfxID.toString())
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            if(_loc8_ && _loc2_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                         },_loc3_[_loc4_] = _loc6_,false),_loc4_);
                                                                                                         if(_loc9_ || _loc2_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr0a02:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().§§slot[2].frameset[§§pop().§§slot[8].@id.toString()] = new FramesetVo(int(§§pop().§§slot[8].@start.toString()),int(§§pop().§§slot[8].@end.toString()),int(§§pop().§§slot[8].@playback.toString()));
                                                                                                               }
                                                                                                            }
                                                                                                            addr0a00:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§hasnext(_loc4_,this.xml..requires.building.(if(!_loc8_)
                                                                                                            {
                                                                                                               if(@gfxID != gfxID.toString())
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               if(_loc8_ && _loc2_)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                            },_loc3_[_loc4_] = _loc6_,false)));
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         break;
                                                                                                         addr0a4c:
                                                                                                      }
                                                                                                      §§goto(addr0a02);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0a53);
                                                                                             }
                                                                                             return §§pop();
                                                                                          }
                                                                                          §§goto(addr0688);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr09bb:
                                                                                          _loc4_ = §§pop().§§slot[4].animations.frameset;
                                                                                          if(_loc9_ || this.xml..requires.building.(if(!_loc8_)
                                                                                          {
                                                                                             if(@gfxID != gfxID.toString())
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             if(_loc8_ && _loc2_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                          },_loc3_[_loc4_] = _loc6_,false))
                                                                                          {
                                                                                             §§goto(addr0a4c);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0a00);
                                                                                    }
                                                                                    §§goto(addr0753);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr09aa:
                                                                                    _loc3_ = §§pop();
                                                                                    if(!(_loc8_ && this.xml..requires.building.(if(!_loc8_)
                                                                                    {
                                                                                       if(@gfxID != gfxID.toString())
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       if(_loc8_ && _loc2_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                    },_loc3_[_loc4_] = _loc6_,false)))
                                                                                    {
                                                                                       §§goto(addr09bb);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0a55);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr095a:
                                                                                 if(!(_loc8_ && Boolean(param1)))
                                                                                 {
                                                                                    addr096a:
                                                                                    §§push(§§pop().§§slot[2]);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr0974:
                                                                                       §§pop().texturePath = "";
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          addr097d:
                                                                                          if(!(_loc8_ && this.xml..requires.building.(if(!_loc8_)
                                                                                          {
                                                                                             if(@gfxID != gfxID.toString())
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             if(_loc8_ && _loc2_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                          },_loc3_[_loc4_] = _loc6_,false)))
                                                                                          {
                                                                                             §§goto(addr098d);
                                                                                          }
                                                                                          §§goto(addr0aae);
                                                                                       }
                                                                                       §§goto(addr0b64);
                                                                                    }
                                                                                    §§goto(addr0ab6);
                                                                                 }
                                                                              }
                                                                              §§goto(addr0adf);
                                                                           }
                                                                           §§goto(addr098d);
                                                                        }
                                                                        §§goto(addr0b75);
                                                                     }
                                                                     else if(!_loc8_)
                                                                     {
                                                                        addr0767:
                                                                        if(§§pop().§§slot[4].sheet.image.text())
                                                                        {
                                                                           if(!(_loc8_ && Boolean(this)))
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§pop().§§slot[2] = new UrbieLifeConfigVo();
                                                                                 if(!(_loc8_ && _loc2_))
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(§§pop().§§slot[4].requires)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(!(_loc8_ && Boolean(this)))
                                                                                             {
                                                                                                if(§§pop().§§slot[4].requires.building.length())
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      addr07e4:
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[2]);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§pop().requiredBuilding = §§pop().§§slot[4].requires.building.@gfxID[0].toString();
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  addr0819:
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[2]);
                                                                                                                     if(_loc9_ || Boolean(this))
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§pop().id = §§pop().§§slot[4].@id.toString();
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              if(!(_loc8_ && Boolean(param1)))
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§§slot[2]);
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr086a);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0941);
                                                                                                                                 }
                                                                                                                                 §§goto(addr08f6);
                                                                                                                              }
                                                                                                                              §§goto(addr0884);
                                                                                                                           }
                                                                                                                           §§goto(addr095a);
                                                                                                                        }
                                                                                                                        §§goto(addr0941);
                                                                                                                     }
                                                                                                                     §§goto(addr08c5);
                                                                                                                  }
                                                                                                                  §§goto(addr0aae);
                                                                                                               }
                                                                                                               §§goto(addr097d);
                                                                                                            }
                                                                                                            addr086a:
                                                                                                            §§pop().animationClass = §§pop().§§slot[4].@animation.toString();
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               addr087c:
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  addr0884:
                                                                                                                  §§push(§§pop().§§slot[2]);
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     §§push("");
                                                                                                                     if(!(_loc8_ && Boolean(param1)))
                                                                                                                     {
                                                                                                                        §§pop().lightingPath = §§pop();
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           if(_loc9_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr08b5:
                                                                                                                              §§push(§§pop().§§slot[2]);
                                                                                                                              if(!(_loc8_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr08c5:
                                                                                                                                 §§push("");
                                                                                                                                 if(!(_loc8_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§pop().lightingData = §§pop();
                                                                                                                                    if(_loc9_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§§slot[2]);
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             addr08f6:
                                                                                                                                             if(_loc9_ || Boolean(param1))
                                                                                                                                             {
                                                                                                                                                §§pop().sheetPath = §§pop().§§slot[4].sheet.image.text().toString();
                                                                                                                                                if(!(_loc8_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0927);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0b64);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0941);
                                                                                                                                          }
                                                                                                                                          addr0b79:
                                                                                                                                          return §§pop();
                                                                                                                                       }
                                                                                                                                       §§goto(addr0b6c);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0acf);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0974);
                                                                                                                              }
                                                                                                                              §§goto(addr0a7d);
                                                                                                                           }
                                                                                                                           §§goto(addr0adf);
                                                                                                                        }
                                                                                                                        §§goto(addr09a8);
                                                                                                                     }
                                                                                                                     §§goto(addr0974);
                                                                                                                  }
                                                                                                                  §§goto(addr099d);
                                                                                                               }
                                                                                                               §§goto(addr08b5);
                                                                                                            }
                                                                                                            §§goto(addr0927);
                                                                                                         }
                                                                                                         §§goto(addr099d);
                                                                                                      }
                                                                                                      §§goto(addr0a6d);
                                                                                                   }
                                                                                                   §§goto(addr0927);
                                                                                                }
                                                                                                §§goto(addr0819);
                                                                                             }
                                                                                             §§goto(addr0884);
                                                                                          }
                                                                                          §§goto(addr0a9e);
                                                                                       }
                                                                                       §§goto(addr0819);
                                                                                    }
                                                                                    §§goto(addr0b6c);
                                                                                 }
                                                                                 §§goto(addr0b75);
                                                                              }
                                                                              §§goto(addr0b77);
                                                                           }
                                                                           §§goto(addr087c);
                                                                        }
                                                                        §§goto(addr0b75);
                                                                     }
                                                                     §§goto(addr096a);
                                                                  }
                                                                  §§goto(addr0adf);
                                                               }
                                                               §§goto(addr07e4);
                                                            }
                                                            §§goto(addr0b20);
                                                         }
                                                         §§goto(addr0b75);
                                                      }
                                                      §§goto(addr0201);
                                                   }
                                                   §§goto(addr0767);
                                                }
                                                addr0927:
                                                if(!(_loc8_ && this.xml..requires.building.(if(!_loc8_)
                                                {
                                                   if(@gfxID != gfxID.toString())
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(_loc8_ && _loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                },_loc3_[_loc4_] = _loc6_,false)))
                                                {
                                                   §§push(§§pop().§§slot[2]);
                                                   if(_loc9_)
                                                   {
                                                      addr0941:
                                                      §§pop().sheetData = §§pop().§§slot[4].sheet.data.text().toString();
                                                      if(_loc9_)
                                                      {
                                                         §§goto(addr095a);
                                                      }
                                                      §§goto(addr097d);
                                                   }
                                                   §§goto(addr0aef);
                                                }
                                                addr098d:
                                                §§push(§§pop().§§slot[2]);
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   addr099d:
                                                   §§pop().iteration = 0;
                                                   if(!_loc8_)
                                                   {
                                                      addr09a8:
                                                      §§goto(addr09aa);
                                                      §§push(0);
                                                   }
                                                   §§goto(addr0a9e);
                                                }
                                                addr0b74:
                                                return §§pop();
                                             }
                                             §§goto(addr0146);
                                          }
                                          §§goto(addr011f);
                                       }
                                       §§goto(addr0114);
                                    }
                                    §§goto(addr0146);
                                 }
                                 §§goto(addr010b);
                              }
                              §§goto(addr00f8);
                           }
                           §§goto(addr0146);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0127);
               }
               §§goto(addr011f);
            }
            §§goto(addr0084);
         }
         §§goto(addr0146);
      }
      
      private function get happinessMood() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.globalBlanceProxy);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop().happinessPercental);
               if(_loc2_)
               {
                  §§push(0.66);
                  if(!(_loc1_ && _loc1_))
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§push(MOOD_HAPPY);
                           if(_loc2_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr009e:
                           §§push(MOOD_NEUTRAL);
                        }
                        §§goto(addr00a1);
                     }
                     else
                     {
                        addr007c:
                        addr007a:
                        addr0077:
                        if(this.globalBlanceProxy.happinessPercental <= -0.66)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr008d:
                              §§push(MOOD_SAD);
                              if(_loc2_ || Boolean(this))
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              §§goto(addr009e);
                           }
                           addr00a1:
                           return §§pop();
                        }
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr007a);
            }
            §§goto(addr0077);
         }
         §§goto(addr008d);
      }
      
      public function get batch() : Vector.<UrbieLifeConfigVo>
      {
         return this.getBatchOfMood(this.happinessMood);
      }
      
      public function get carBatch() : Vector.<UrbieLifeConfigVo>
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:XMLList = null;
         if(!(_loc2_ && _loc2_))
         {
            if(!this._carBatch)
            {
               addr0047:
               _loc1_ = this.xml..cars.citizen;
               if(!(_loc2_ && _loc3_))
               {
                  this._carBatch = this.parseCitizenCombos(_loc1_);
               }
            }
            return this._carBatch;
         }
         §§goto(addr0047);
      }
      
      public function getSheetUrbieConfigByXMLID(param1:String) : UrbieLifeConfigVo
      {
         var id:String;
         var result:UrbieLifeConfigVo;
         var citizen:XML;
         var frameset:XML;
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc9_)
         {
            §§push(null);
            if(_loc9_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc8_)
               {
                  §§push(§§newactivation());
                  if(_loc9_ || _loc2_)
                  {
                     addr0043:
                     §§pop().§§slot[4] = null;
                     if(!(_loc8_ && _loc2_))
                     {
                        addr0056:
                        §§push(§§newactivation());
                        if(!(_loc8_ && _loc3_))
                        {
                           §§goto(addr0066);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr0056);
            }
            §§goto(addr0043);
         }
         addr0066:
         §§pop().§§slot[1] = param1;
         if(!(_loc8_ && Boolean(this)))
         {
            §§push(§§newactivation());
            if(_loc9_)
            {
               §§pop().§§slot[2] = new UrbieLifeConfigVo();
               if(_loc9_ || Boolean(this))
               {
                  §§goto(addr0099);
               }
               §§goto(addr00a1);
            }
            §§goto(addr00a3);
         }
         addr0099:
         if(this.xml)
         {
            citizen = this.xml..citizen.(if(_loc9_ || Boolean(param1))
            {
               if(@id != id)
               {
                  continue loop0;
               }
               if(_loc8_ && Boolean(_loc3_))
               {
                  continue loop0;
               }
            },_loc3_[_loc4_] = _loc6_,false)[0];
            addr00a1:
            addr00a3:
            if(_loc9_ || _loc2_)
            {
               if(!_loc8_)
               {
                  if(§§pop().§§slot[3])
                  {
                     if(_loc9_ || this.xml..citizen.(if(_loc9_ || Boolean(param1))
                     {
                        if(@id != id)
                        {
                           continue loop0;
                        }
                        if(_loc8_ && Boolean(_loc3_))
                        {
                           continue loop0;
                        }
                     },_loc3_[_loc4_] = _loc6_,false))
                     {
                        if(!(_loc8_ && _loc2_))
                        {
                           if(§§pop().§§slot[3]..texture.length())
                           {
                              if(_loc9_)
                              {
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    §§push(§§pop().§§slot[2]);
                                    if(!_loc8_)
                                    {
                                       if(_loc9_ || this.xml..citizen.(if(_loc9_ || Boolean(param1))
                                       {
                                          if(@id != id)
                                          {
                                             continue loop0;
                                          }
                                          if(_loc8_ && Boolean(_loc3_))
                                          {
                                             continue loop0;
                                          }
                                       },_loc3_[_loc4_] = _loc6_,false))
                                       {
                                          §§pop().lightingPath = §§pop().§§slot[3].light.image.text().toString();
                                          if(_loc9_)
                                          {
                                             if(_loc9_)
                                             {
                                                §§push(§§pop().§§slot[2]);
                                                if(_loc9_)
                                                {
                                                   if(!(_loc8_ && Boolean(param1)))
                                                   {
                                                      §§pop().lightingData = §§pop().§§slot[3].light.data.text().toString();
                                                      if(_loc9_ || Boolean(param1))
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§§pop().§§slot[2]);
                                                            if(_loc9_)
                                                            {
                                                               if(_loc9_ || _loc2_)
                                                               {
                                                                  §§pop().sheetPath = §§pop().§§slot[3].sheet.image.text().toString();
                                                                  if(_loc9_ || Boolean(param1))
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(§§pop().§§slot[2]);
                                                                        if(_loc9_)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              addr0240:
                                                                              §§pop().sheetData = §§pop().§§slot[3].sheet.data.text().toString();
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr0259:
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr0261:
                                                                                    §§push(§§pop().§§slot[2]);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(!(_loc8_ && Boolean(this)))
                                                                                       {
                                                                                          §§pop().texturePath = §§pop().§§slot[3]..texture[0].text().toString();
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr0294:
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§push(§§pop().§§slot[2]);
                                                                                                if(_loc9_ || Boolean(param1))
                                                                                                {
                                                                                                   if(_loc9_ || this.xml..citizen.(if(_loc9_ || Boolean(param1))
                                                                                                   {
                                                                                                      if(@id != id)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      if(_loc8_ && Boolean(_loc3_))
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                   },_loc3_[_loc4_] = _loc6_,false))
                                                                                                   {
                                                                                                      §§pop().id = §§pop().§§slot[3].@id.toString();
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         addr02cd:
                                                                                                         if(_loc9_ || Boolean(this))
                                                                                                         {
                                                                                                            addr02dd:
                                                                                                            if(§§pop().§§slot[3].@spawnEnabled)
                                                                                                            {
                                                                                                               if(_loc9_ || _loc2_)
                                                                                                               {
                                                                                                                  addr02f4:
                                                                                                                  if(!(_loc8_ && this.xml..citizen.(if(_loc9_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     if(@id != id)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     if(_loc8_ && Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                  },_loc3_[_loc4_] = _loc6_,false)))
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[2]);
                                                                                                                     if(!(_loc8_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        if(_loc9_ || this.xml..citizen.(if(_loc9_ || Boolean(param1))
                                                                                                                        {
                                                                                                                           if(@id != id)
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           if(_loc8_ && Boolean(_loc3_))
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                        },_loc3_[_loc4_] = _loc6_,false))
                                                                                                                        {
                                                                                                                           addr0324:
                                                                                                                           §§push(§§pop().§§slot[3].@spawnEnabled == "false");
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§push(!§§pop());
                                                                                                                              if(_loc9_ || Boolean(param1))
                                                                                                                              {
                                                                                                                                 §§pop().spawnEnabled = §§pop();
                                                                                                                                 if(!(_loc8_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr0353:
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       if(§§pop().§§slot[3].@unique)
                                                                                                                                       {
                                                                                                                                          if(!(_loc8_ && Boolean(param1)))
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§§slot[2]);
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr0382:
                                                                                                                                                   if(_loc9_ || this.xml..citizen.(if(_loc9_ || Boolean(param1))
                                                                                                                                                   {
                                                                                                                                                      if(@id != id)
                                                                                                                                                      {
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      if(_loc8_ && Boolean(_loc3_))
                                                                                                                                                      {
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                   },_loc3_[_loc4_] = _loc6_,false))
                                                                                                                                                   {
                                                                                                                                                      addr0392:
                                                                                                                                                      §§push(§§pop().§§slot[3].@unique == "false");
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                         if(_loc9_ || Boolean(param1))
                                                                                                                                                         {
                                                                                                                                                            §§pop().unique = §§pop();
                                                                                                                                                            if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                            {
                                                                                                                                                               addr0617:
                                                                                                                                                               if(_loc9_ || this.xml..citizen.(if(_loc9_ || Boolean(param1))
                                                                                                                                                               {
                                                                                                                                                                  if(@id != id)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop0;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc8_ && Boolean(_loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop0;
                                                                                                                                                                  }
                                                                                                                                                               },_loc3_[_loc4_] = _loc6_,false))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().§§slot[2]);
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     addr062f:
                                                                                                                                                                     if(!(_loc8_ && Boolean(this)))
                                                                                                                                                                     {
                                                                                                                                                                        addr063f:
                                                                                                                                                                        §§pop().id = §§pop().§§slot[3].@id.toString();
                                                                                                                                                                        if(_loc9_ || this.xml..citizen.(if(_loc9_ || Boolean(param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(@id != id)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop0;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc8_ && Boolean(_loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop0;
                                                                                                                                                                           }
                                                                                                                                                                        },_loc3_[_loc4_] = _loc6_,false))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_ || Boolean(this))
                                                                                                                                                                           {
                                                                                                                                                                              addr0668:
                                                                                                                                                                              §§push(§§pop().§§slot[2]);
                                                                                                                                                                              if(!(_loc8_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc9_ || this.xml..citizen.(if(_loc9_ || Boolean(param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(@id != id)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop0;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc8_ && Boolean(_loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop0;
                                                                                                                                                                                    }
                                                                                                                                                                                 },_loc3_[_loc4_] = _loc6_,false))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0688:
                                                                                                                                                                                    §§pop().citizenID = §§pop().§§slot[3].@id.toString();
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr069a:
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr06a2:
                                                                                                                                                                                          §§push(§§pop().§§slot[2]);
                                                                                                                                                                                          if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr06b2:
                                                                                                                                                                                             if(_loc9_ || this.xml..citizen.(if(_loc9_ || Boolean(param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(@id != id)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop0;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc8_ && Boolean(_loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop0;
                                                                                                                                                                                                }
                                                                                                                                                                                             },_loc3_[_loc4_] = _loc6_,false))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr06c2:
                                                                                                                                                                                                §§pop().animationClass = §§pop().§§slot[3].@animation.toString();
                                                                                                                                                                                                if(_loc9_ || this.xml..citizen.(if(_loc9_ || Boolean(param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(@id != id)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop0;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc8_ && Boolean(_loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop0;
                                                                                                                                                                                                   }
                                                                                                                                                                                                },_loc3_[_loc4_] = _loc6_,false))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr06dc:
                                                                                                                                                                                                   if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr06f4:
                                                                                                                                                                                                         §§pop().iteration = 0;
                                                                                                                                                                                                         if(!_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr06ff:
                                                                                                                                                                                                            var _loc3_:int = 0;
                                                                                                                                                                                                            if(!(_loc8_ && Boolean(this)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               var _loc4_:* = §§pop().§§slot[3].animations.frameset;
                                                                                                                                                                                                               if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               for each(_loc3_ in _loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().§§slot[4] = _loc3_;
                                                                                                                                                                                                                     if(_loc8_ && Boolean(_loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().§§slot[2].frameset[§§pop().§§slot[4].@id.toString()] = new FramesetVo(int(§§pop().§§slot[4].@start.toString()),int(§§pop().§§slot[4].@end.toString()),int(§§pop().§§slot[4].@playback.toString()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc9_ || Boolean(param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr07bc:
                                                                                                                                                                                                               if(!(_loc8_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                  if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().fps = int(§§pop().§§slot[3].@fps.toString());
                                                                                                                                                                                                                     if(_loc9_ || Boolean(this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr07fd:
                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr0805:
                                                                                                                                                                                                                           §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr080d:
                                                                                                                                                                                                                              §§pop().columns = int(§§pop().§§slot[3].@col.toString());
                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr082e:
                                                                                                                                                                                                                                    §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr0836:
                                                                                                                                                                                                                                       §§pop().rows = int(§§pop().§§slot[3].@row.toString());
                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr084f:
                                                                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr0857:
                                                                                                                                                                                                                                             §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                                             if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr0867:
                                                                                                                                                                                                                                                §§pop().offset = new Point(int(§§pop().§§slot[3].@offsetX.toString()),int(§§pop().§§slot[3].@offsetY.toString()));
                                                                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr08a1:
                                                                                                                                                                                                                                                   if(!_loc8_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr08d1);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr08cf);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr08cd);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr08d1:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr08a9);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr08cd);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr08d1);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr08cf);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr08cd);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0836);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr082e);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr08a1);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr080d);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr082e);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr07fd);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr08d2);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr08d1);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr08a9);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr06ff);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr08b3);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr080d);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr08cf);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr07fd);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr06c2);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr08b1);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0857);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr08cd);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr06c2);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr06f4);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0857);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr084f);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr0555:
                                                                                                                                                            §§pop().spawnEnabled = §§pop();
                                                                                                                                                            if(_loc9_ || Boolean(param1))
                                                                                                                                                            {
                                                                                                                                                               addr059a:
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop().§§slot[3].@unique)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr05c1:
                                                                                                                                                                           §§push(§§pop().§§slot[2]);
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              addr05c9:
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr05d1:
                                                                                                                                                                                 §§push(§§pop().§§slot[3].@unique == "true");
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr05e0:
                                                                                                                                                                                    §§pop().unique = §§pop();
                                                                                                                                                                                    if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr0617);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr084f);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr060e:
                                                                                                                                                                                    §§pop().unique = §§pop();
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr0617);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr07fd);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0688);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr08b1);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr06a2);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr084f);
                                                                                                                                                                  }
                                                                                                                                                                  else if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     addr05fd:
                                                                                                                                                                     §§push(§§pop().§§slot[2]);
                                                                                                                                                                     if(!(_loc8_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr060d:
                                                                                                                                                                        §§goto(addr060e);
                                                                                                                                                                        §§push(false);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr08d1);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr08a9);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0857);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr06ff);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0555);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr0494:
                                                                                                                                                   if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§pop().sheetData = §§pop().§§slot[3].sheet.data.text().toString();
                                                                                                                                                      if(_loc9_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr04c5:
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            addr04cd:
                                                                                                                                                            §§push(§§pop().§§slot[2]);
                                                                                                                                                            if(_loc9_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr04df:
                                                                                                                                                               §§pop().texturePath = "";
                                                                                                                                                               addr04dd:
                                                                                                                                                               if(_loc9_ || Boolean(this))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     addr04f8:
                                                                                                                                                                     if(§§pop().§§slot[3].@spawnEnabled)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                                                                                        {
                                                                                                                                                                           addr050f:
                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().§§slot[2]);
                                                                                                                                                                              if(_loc9_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr0527:
                                                                                                                                                                                 if(_loc9_ || Boolean(this))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0537:
                                                                                                                                                                                    §§push(§§pop().§§slot[3].@spawnEnabled == "false");
                                                                                                                                                                                    if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr0555);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0589:
                                                                                                                                                                                          §§pop().spawnEnabled = §§pop();
                                                                                                                                                                                          if(_loc9_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr059a);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr069a);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr060e);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr063f);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr057a:
                                                                                                                                                                                 §§push(true);
                                                                                                                                                                                 if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr0589);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr05e0);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr05c1);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr07bc);
                                                                                                                                                                     }
                                                                                                                                                                     else if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().§§slot[2]);
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr057a);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0867);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr082e);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr08cf);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr07fd);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr057a);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr05c1);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr069a);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr0688);
                                                                                                                                             }
                                                                                                                                             §§goto(addr05fd);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr0617);
                                                                                                                                    }
                                                                                                                                    §§goto(addr04cd);
                                                                                                                                 }
                                                                                                                                 §§goto(addr050f);
                                                                                                                              }
                                                                                                                              §§goto(addr0589);
                                                                                                                           }
                                                                                                                           §§goto(addr0555);
                                                                                                                        }
                                                                                                                        §§goto(addr0537);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr040e:
                                                                                                                        §§push("");
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           addr0416:
                                                                                                                           §§pop().lightingData = §§pop();
                                                                                                                           if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§§slot[2]);
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    if(_loc9_ || Boolean(_loc3_))
                                                                                                                                    {
                                                                                                                                       §§pop().sheetPath = §§pop().§§slot[3].sheet.image.text().toString();
                                                                                                                                       addr0447:
                                                                                                                                       if(!(_loc8_ && Boolean(param1)))
                                                                                                                                       {
                                                                                                                                          addr0474:
                                                                                                                                          if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                                                          {
                                                                                                                                             addr0484:
                                                                                                                                             §§push(§§pop().§§slot[2]);
                                                                                                                                             if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                                                             {
                                                                                                                                                §§goto(addr0494);
                                                                                                                                             }
                                                                                                                                             §§goto(addr060d);
                                                                                                                                          }
                                                                                                                                          §§goto(addr06a2);
                                                                                                                                       }
                                                                                                                                       §§goto(addr07fd);
                                                                                                                                    }
                                                                                                                                    §§goto(addr08b3);
                                                                                                                                 }
                                                                                                                                 §§goto(addr05c9);
                                                                                                                              }
                                                                                                                              addr08a9:
                                                                                                                              §§push(§§pop().§§slot[2]);
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 addr08b3:
                                                                                                                                 §§pop().terrain = §§pop().§§slot[3].@terrain.toString();
                                                                                                                                 addr08b1:
                                                                                                                                 if(!(_loc8_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr08cf:
                                                                                                                                    addr08cd:
                                                                                                                                    return §§pop().§§slot[2];
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr08d2);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              return §§pop();
                                                                                                                           }
                                                                                                                           §§goto(addr08a1);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr04df);
                                                                                                                  }
                                                                                                                  §§goto(addr04cd);
                                                                                                               }
                                                                                                               §§goto(addr06dc);
                                                                                                            }
                                                                                                            §§goto(addr0353);
                                                                                                         }
                                                                                                         §§goto(addr0805);
                                                                                                      }
                                                                                                      §§goto(addr069a);
                                                                                                   }
                                                                                                   §§goto(addr0392);
                                                                                                }
                                                                                                §§goto(addr062f);
                                                                                             }
                                                                                             §§goto(addr0668);
                                                                                          }
                                                                                          §§goto(addr069a);
                                                                                       }
                                                                                       §§goto(addr05d1);
                                                                                    }
                                                                                    §§goto(addr04dd);
                                                                                 }
                                                                                 §§goto(addr04f8);
                                                                              }
                                                                              §§goto(addr0294);
                                                                           }
                                                                           §§goto(addr0324);
                                                                        }
                                                                        §§goto(addr0382);
                                                                     }
                                                                     §§goto(addr0261);
                                                                  }
                                                                  §§goto(addr04c5);
                                                               }
                                                               §§goto(addr0240);
                                                            }
                                                            §§goto(addr05c9);
                                                         }
                                                         §§goto(addr06a2);
                                                      }
                                                      §§goto(addr0474);
                                                   }
                                                   §§goto(addr0392);
                                                }
                                                §§goto(addr057a);
                                             }
                                             §§goto(addr04cd);
                                          }
                                          §§goto(addr0259);
                                       }
                                       §§goto(addr0447);
                                    }
                                    §§goto(addr06b2);
                                 }
                                 else
                                 {
                                    addr0406:
                                    §§push(§§pop().§§slot[2]);
                                    if(_loc9_)
                                    {
                                       §§goto(addr040e);
                                    }
                                 }
                                 §§goto(addr0527);
                              }
                              else
                              {
                                 addr03f6:
                                 if(_loc9_ || Boolean(this))
                                 {
                                    §§goto(addr0406);
                                 }
                              }
                              §§goto(addr0805);
                           }
                           else if(!_loc8_)
                           {
                              §§push(§§pop().§§slot[2]);
                              if(!(_loc8_ && _loc2_))
                              {
                                 §§push("");
                                 if(_loc9_ || Boolean(param1))
                                 {
                                    §§pop().lightingPath = §§pop();
                                    if(!_loc8_)
                                    {
                                       §§goto(addr03f6);
                                    }
                                    §§goto(addr059a);
                                 }
                                 §§goto(addr0416);
                              }
                              §§goto(addr060d);
                           }
                           §§goto(addr0484);
                        }
                        §§goto(addr02dd);
                     }
                     §§goto(addr02cd);
                  }
                  §§goto(addr08d2);
               }
               §§goto(addr08cf);
            }
            §§goto(addr02f4);
         }
         addr08d2:
         return null;
      }
      
      private function checkIfBuildingConditionsAreMet(param1:String, param2:Vector.<String>) : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:Boolean = true;
         if(!_loc5_)
         {
            if(param2.indexOf(param1) == -1)
            {
               if(!(_loc5_ && _loc3_))
               {
                  addr0043:
                  §§push(false);
                  if(!_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr004b:
                  return _loc3_;
               }
               return §§pop();
            }
            §§goto(addr004b);
         }
         §§goto(addr0043);
      }
      
      private function get availableGFXids() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         return _loc1_;
      }
      
      public function randomUrbie(param1:int, param2:Number) : UrbieLifeConfigVo
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:Vector.<UrbieLifeConfigVo> = null;
         var _loc4_:int = 0;
         if(_loc5_ || Boolean(param2))
         {
            §§push(param1 == 0);
            if(!_loc6_)
            {
               §§push(!§§pop());
               if(_loc5_ || Boolean(param1))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(_loc5_ || Boolean(param1))
                     {
                        addr0062:
                        §§pop();
                        if(!_loc6_)
                        {
                           §§goto(addr0071);
                        }
                        §§goto(addr0075);
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0062);
            }
            addr0071:
            §§goto(addr0069);
         }
         addr0069:
         if(Math.random() < param2)
         {
            addr0075:
            _loc3_ = this.getEventUrbieList(param1);
            if(_loc5_ || Boolean(param1))
            {
               if(_loc3_.length == 0)
               {
                  if(_loc5_)
                  {
                     return this.randomPfoCitizenConfig;
                  }
               }
            }
            _loc4_ = Math.floor(Math.random() * _loc3_.length);
            if(!(_loc6_ && Boolean(param2)))
            {
               return _loc3_[_loc4_];
            }
         }
         return this.randomPfoCitizenConfig;
      }
      
      public function resetSpawnedList() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(_loc5_ || _loc3_)
         {
            §§push(!this._pfoCustomCitizenTagsSpawned);
            if(!(_loc6_ && _loc3_))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     §§goto(addr004e);
                  }
               }
               §§goto(addr0062);
            }
            addr004e:
            §§pop();
            if(_loc5_ || Boolean(this))
            {
               addr0062:
               if(!this._pfoCustomCarTagsSpawned)
               {
                  if(_loc5_)
                  {
                     §§goto(addr006c);
                  }
               }
               var _loc3_:int = 0;
               var _loc4_:* = this._pfoCustomCitizenTagsFound;
               addr006d:
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc6_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     _loc1_ = §§nextname(_loc3_,_loc4_);
                     if(_loc5_ || Boolean(this))
                     {
                        this._pfoCustomCitizenTagsSpawned[_loc1_] = 0;
                     }
                     continue;
                  }
                  if(_loc5_ || Boolean(this))
                  {
                     if(_loc5_)
                     {
                        if(_loc5_)
                        {
                           _loc3_ = 0;
                           if(_loc5_)
                           {
                              _loc4_ = this._pfoCustomCarTagsFound;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc4_,_loc3_));
                                 break loop0;
                              }
                              addr0110:
                              addr0109:
                           }
                           addr0112:
                        }
                        return;
                     }
                     §§goto(addr0112);
                  }
                  §§goto(addr0110);
               }
               while(§§pop())
               {
                  _loc2_ = §§nextname(_loc3_,_loc4_);
                  if(_loc5_)
                  {
                     this._pfoCustomCarTagsSpawned[_loc2_] = 0;
                  }
                  §§goto(addr0109);
               }
               §§goto(addr0110);
            }
            addr006c:
            return;
         }
         §§goto(addr006d);
      }
      
      public function scanForPfoTags() : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:IObject3D = null;
         var _loc7_:BillboardObject = null;
         var _loc8_:* = null;
         if(!(_loc16_ && _loc1_))
         {
            this._pfoCustomCarTagsFound = new Dictionary();
            if(_loc17_)
            {
               this._pfoCustomCarTagsSpawned = new Dictionary();
               if(!_loc16_)
               {
                  addr0059:
                  this._pfoCustomCitizenTagsFound = new Dictionary();
                  if(_loc17_)
                  {
                     this._pfoCustomCitizenTagsSpawned = new Dictionary();
                  }
               }
               var _loc1_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
               var _loc2_:int = ServerTagConstants.CLIENT_CUSTOM_URBIE.length;
               var _loc3_:int = ServerTagConstants.CLIENT_CUSTOM_CAR.length;
               for each(_loc6_ in _loc1_.objectList)
               {
                  if(!(_loc6_ is BillboardObject))
                  {
                     continue;
                  }
                  _loc7_ = _loc6_ as BillboardObject;
                  §§push(_loc7_.billboardObjectVo);
                  if(!(_loc16_ && Boolean(_loc3_)))
                  {
                     var _temp_6:* = §§pop();
                     §§push(_temp_6);
                     if(_temp_6)
                     {
                        §§pop();
                        if(!_loc17_)
                        {
                           continue;
                        }
                        §§push(_loc7_.billboardObjectVo);
                        if(!(_loc16_ && Boolean(this)))
                        {
                           addr00ed:
                           §§push(§§pop().buildingDTO);
                           if(_loc17_)
                           {
                              addr00f7:
                              §§push(§§pop());
                              if(!_loc16_)
                              {
                                 var _temp_8:* = §§pop();
                                 §§push(_temp_8);
                                 §§push(_temp_8);
                                 if(!_loc16_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc17_)
                                       {
                                          §§pop();
                                          if(!_loc16_)
                                          {
                                             §§push(_loc7_.billboardObjectVo);
                                             if(_loc17_ || Boolean(_loc1_))
                                             {
                                                §§push(§§pop().buildingDTO);
                                                if(!_loc16_)
                                                {
                                                   §§push(§§pop().config);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc17_ || Boolean(_loc2_))
                                                      {
                                                         addr014a:
                                                         var _temp_11:* = §§pop();
                                                         addr014b:
                                                         §§push(_temp_11);
                                                         if(_temp_11)
                                                         {
                                                            if(!_loc16_)
                                                            {
                                                               addr0155:
                                                               §§pop();
                                                               if(_loc17_)
                                                               {
                                                                  addr0169:
                                                                  addr0165:
                                                                  addr0163:
                                                                  addr0160:
                                                                  if(!Boolean(_loc7_.billboardObjectVo.buildingDTO.config.tags))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc16_)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               addr0173:
                                                               var _loc11_:int = 0;
                                                               if(!_loc16_)
                                                               {
                                                                  var _loc12_:* = _loc7_.billboardObjectVo.buildingDTO.config.tags;
                                                                  if(_loc17_ || Boolean(_loc3_))
                                                                  {
                                                                     loop1:
                                                                     for each(_loc11_ in _loc12_)
                                                                     {
                                                                        §§push(_loc11_);
                                                                        if(!_loc16_)
                                                                        {
                                                                           var _temp_13:* = §§pop();
                                                                           §§push(_temp_13);
                                                                           §§push(_temp_13);
                                                                           if(!_loc16_)
                                                                           {
                                                                              _loc8_ = §§pop();
                                                                              if(!(_loc16_ && Boolean(this)))
                                                                              {
                                                                                 addr01c2:
                                                                                 §§push(ServerTagConstants.CLIENT_CUSTOM_URBIE);
                                                                                 if(!(_loc16_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    addr01e0:
                                                                                    §§push(int(§§pop().indexOf(§§pop())));
                                                                                    if(!(_loc16_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       var _temp_17:* = §§pop();
                                                                                       §§push(_temp_17);
                                                                                       §§push(_temp_17);
                                                                                       if(_loc17_ || Boolean(_loc3_))
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             §§push(-1);
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                addr0212:
                                                                                                if(§§pop() != §§pop())
                                                                                                {
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      §§push(int(_loc8_.slice(_loc5_ + _loc2_,_loc8_.length)));
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         addr0236:
                                                                                                         _loc4_ = §§pop();
                                                                                                         if(_loc16_ && Boolean(_loc3_))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(this._pfoCustomCitizenTagsFound[_loc4_] == null)
                                                                                                         {
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this._pfoCustomCitizenTagsFound[_loc4_] = 1;
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this._pfoCustomCitizenTagsSpawned[_loc4_] = 0;
                                                                                                                     if(!(_loc16_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     addr0344:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this._pfoCustomCarTagsFound[_loc4_] = 1;
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr026b:
                                                                                                               }
                                                                                                               addr0355:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this._pfoCustomCarTagsSpawned[_loc4_] = 0;
                                                                                                                  if(_loc17_ || Boolean(_loc1_))
                                                                                                                  {
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            var _loc13_:* = this._pfoCustomCitizenTagsFound;
                                                                                                            var _loc14_:*;
                                                                                                            var _loc15_:* = _loc13_[_loc14_ = _loc4_] + 1;
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               _loc13_[_loc14_] = _loc15_;
                                                                                                            }
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               if(_loc17_ || Boolean(_loc1_))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               addr0320:
                                                                                                               _loc4_ = int(_loc8_.slice(_loc5_ + _loc3_,_loc8_.length));
                                                                                                               addr030c:
                                                                                                               if(_loc17_ || Boolean(_loc1_))
                                                                                                               {
                                                                                                                  if(this._pfoCustomCarTagsFound[_loc4_] != null)
                                                                                                                  {
                                                                                                                     _loc13_ = this._pfoCustomCarTagsFound;
                                                                                                                     _loc15_ = _loc13_[_loc14_ = _loc4_] + 1;
                                                                                                                     if(_loc17_ || Boolean(this))
                                                                                                                     {
                                                                                                                        _loc13_[_loc14_] = _loc15_;
                                                                                                                     }
                                                                                                                     addr03ab:
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     §§goto(addr0344);
                                                                                                                  }
                                                                                                                  §§goto(addr0355);
                                                                                                               }
                                                                                                               §§goto(addr0344);
                                                                                                            }
                                                                                                            §§goto(addr03ab);
                                                                                                         }
                                                                                                         §§goto(addr0344);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0300:
                                                                                                         addr0302:
                                                                                                         if(§§pop() == -1)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr030c);
                                                                                                   }
                                                                                                   §§goto(addr026b);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr02ce:
                                                                                                   addr02c9:
                                                                                                   §§push(int(_loc8_.indexOf(ServerTagConstants.CLIENT_CUSTOM_CAR)));
                                                                                                   if(_loc17_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      var _temp_30:* = §§pop();
                                                                                                      §§push(_temp_30);
                                                                                                      §§push(_temp_30);
                                                                                                      if(_loc17_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         _loc5_ = §§pop();
                                                                                                         if(!(_loc16_ && Boolean(_loc3_)))
                                                                                                         {
                                                                                                            §§goto(addr0300);
                                                                                                         }
                                                                                                         §§goto(addr0320);
                                                                                                      }
                                                                                                      §§goto(addr0302);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0320);
                                                                                             }
                                                                                             §§goto(addr0302);
                                                                                          }
                                                                                          §§goto(addr0320);
                                                                                       }
                                                                                       §§goto(addr0212);
                                                                                    }
                                                                                    §§goto(addr0236);
                                                                                 }
                                                                                 §§goto(addr02ce);
                                                                              }
                                                                              §§goto(addr02c9);
                                                                           }
                                                                           §§goto(addr01e0);
                                                                        }
                                                                        §§goto(addr01c2);
                                                                     }
                                                                     addr03b6:
                                                                     continue;
                                                                  }
                                                                  §§goto(addr025a);
                                                               }
                                                               §§goto(addr03b6);
                                                            }
                                                         }
                                                         §§goto(addr0169);
                                                      }
                                                      §§goto(addr0155);
                                                   }
                                                   §§goto(addr0165);
                                                }
                                                §§goto(addr0163);
                                             }
                                             §§goto(addr0160);
                                          }
                                          §§goto(addr0173);
                                       }
                                       §§goto(addr0169);
                                    }
                                    §§goto(addr014a);
                                 }
                                 §§goto(addr014b);
                              }
                              §§goto(addr0155);
                           }
                           §§goto(addr0163);
                        }
                        §§goto(addr0160);
                     }
                     §§goto(addr00f7);
                  }
                  §§goto(addr00ed);
               }
               return;
            }
         }
         §§goto(addr0059);
      }
      
      private function get randomPfoCitizenConfig() : UrbieLifeConfigVo
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:* = undefined;
         var _loc2_:* = 0;
         if(_loc8_ || Boolean(this))
         {
            if(!this._pfoCustomCitizenTagsFound)
            {
               if(_loc8_ || Boolean(_loc2_))
               {
                  this.scanForPfoTags();
               }
            }
         }
         var _loc3_:int = 0;
         var _loc4_:* = this._pfoCustomCitizenTagsFound;
         while(true)
         {
            loop0:
            for(_loc1_ in _loc4_)
            {
               if(!_loc8_)
               {
                  break;
               }
               if(this._pfoCustomCitizenTagsSpawned[_loc1_] >= this._pfoCustomCitizenTagsFound[_loc1_])
               {
                  continue;
               }
               if(_loc8_)
               {
                  §§push(0);
                  if(_loc8_)
                  {
                     _loc2_ = §§pop();
                     if(_loc9_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                     }
                     addr010c:
                  }
                  while(§§pop() < this.playfieldObjectsCitizenBatch.length)
                  {
                     if(this.playfieldObjectsCitizenBatch[_loc2_].pfoTagID == _loc1_)
                     {
                        if(_loc8_)
                        {
                           addr00ad:
                           var _loc5_:* = this._pfoCustomCitizenTagsSpawned;
                           var _loc6_:*;
                           var _loc7_:* = _loc5_[_loc6_ = _loc1_] + 1;
                           if(!_loc9_)
                           {
                              _loc5_[_loc6_] = _loc7_;
                           }
                           if(!(_loc9_ && Boolean(_loc3_)))
                           {
                              break loop0;
                           }
                           break;
                        }
                     }
                     else
                     {
                        _loc2_++;
                        if(!_loc8_)
                        {
                           break;
                        }
                     }
                     §§goto(addr010c);
                  }
                  continue;
               }
               §§goto(addr00ad);
            }
            return this.randomStandardCitizenConfig;
         }
         return this.playfieldObjectsCitizenBatch[_loc2_];
      }
      
      private function get randomPfoCarConfig() : UrbieLifeConfigVo
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:* = undefined;
         var _loc2_:* = 0;
         if(!(_loc9_ && Boolean(_loc2_)))
         {
            if(!this._pfoCustomCarTagsFound)
            {
               if(!(_loc9_ && _loc1_))
               {
                  this.scanForPfoTags();
               }
            }
         }
         var _loc3_:int = 0;
         var _loc4_:* = this._pfoCustomCarTagsFound;
         while(true)
         {
            loop0:
            for(_loc1_ in _loc4_)
            {
               if(_loc8_ || _loc1_)
               {
                  if(this._pfoCustomCarTagsSpawned[_loc1_] >= this._pfoCustomCarTagsFound[_loc1_])
                  {
                     continue;
                  }
                  if(_loc9_ && Boolean(_loc2_))
                  {
                     continue;
                  }
                  §§push(0);
                  if(!(_loc9_ && Boolean(_loc2_)))
                  {
                     _loc2_ = §§pop();
                     if(!(_loc9_ && Boolean(this)))
                     {
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_);
                           addr0132:
                           while(§§pop() < this.playfieldObjectsCarBatch.length)
                           {
                              if(this.playfieldObjectsCarBatch[_loc2_].pfoTagID != _loc1_)
                              {
                                 _loc2_++;
                                 if(_loc9_ && _loc1_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              if(!_loc8_)
                              {
                                 break loop0;
                              }
                              continue loop3;
                           }
                           continue loop0;
                        }
                        addr0131:
                     }
                     do
                     {
                        var _loc5_:* = this._pfoCustomCarTagsSpawned;
                        var _loc6_:*;
                        var _loc7_:* = _loc5_[_loc6_ = _loc1_] + 1;
                        if(!_loc9_)
                        {
                           _loc5_[_loc6_] = _loc7_;
                        }
                        if(!(_loc9_ && _loc1_))
                        {
                           break;
                        }
                        §§goto(addr0131);
                     }
                     while(_loc8_);
                     
                     break;
                  }
                  §§goto(addr0132);
               }
               §§goto(addr0131);
            }
            return this.randomStandardCarConfig;
         }
         return this.playfieldObjectsCarBatch[_loc2_];
      }
      
      private function get randomStandardCitizenConfig() : UrbieLifeConfigVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:int = Math.floor(Math.random() * this.batch.length);
         var _loc2_:UrbieLifeConfigVo = this.batch[_loc1_];
         while(true)
         {
            §§push(_loc2_.spawnEnabled);
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(!§§pop());
            }
            if(!§§pop())
            {
               break;
            }
            _loc1_ = Math.floor(Math.random() * this.batch.length);
            if(!_loc3_)
            {
               break;
            }
            _loc2_ = this.batch[_loc1_];
         }
         return _loc2_;
      }
      
      public function randomCar(param1:int, param2:Number) : UrbieLifeConfigVo
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:Vector.<UrbieLifeConfigVo> = null;
         var _loc4_:int = 0;
         if(!_loc6_)
         {
            §§push(param1 == 0);
            if(!(_loc6_ && Boolean(param2)))
            {
               §§push(!§§pop());
               if(_loc5_ || Boolean(this))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc6_)
                     {
                        addr004f:
                        §§pop();
                        if(!(_loc6_ && Boolean(this)))
                        {
                           §§goto(addr0072);
                        }
                        §§goto(addr0076);
                     }
                  }
               }
               addr0072:
               §§goto(addr005e);
            }
            §§goto(addr004f);
         }
         addr005e:
         if(Math.random() < param2)
         {
            addr0076:
            _loc3_ = this.getEventCarList(param1);
            if(_loc5_ || Boolean(_loc3_))
            {
               if(_loc3_.length == 0)
               {
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     return this.randomPfoCarConfig;
                  }
               }
               else
               {
                  addr00c6:
                  _loc4_ = Math.floor(Math.random() * _loc3_.length);
                  if(_loc6_ && Boolean(param1))
                  {
                     §§goto(addr00ee);
                  }
               }
               return _loc3_[_loc4_];
            }
            §§goto(addr00c6);
         }
         addr00ee:
         return this.randomPfoCarConfig;
      }
      
      private function get randomStandardCarConfig() : UrbieLifeConfigVo
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:Vector.<UrbieLifeConfigVo> = this.carBatch;
         var _loc2_:* = int(Math.floor(Math.random() * _loc1_.length));
         var _loc3_:UrbieLifeConfigVo = _loc1_[_loc2_];
         loop0:
         while(true)
         {
            §§push(_loc3_.spawnEnabled);
            if(_loc5_)
            {
               §§push(!§§pop());
               if(_loc5_ || Boolean(_loc2_))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(!(_loc4_ && Boolean(_loc3_)))
                     {
                        addr00b4:
                        §§pop();
                        if(_loc4_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc3_.eventID);
                           addr00bf:
                           while(true)
                           {
                              §§push(§§pop() == 0);
                              if(_loc5_)
                              {
                                 §§push(!§§pop());
                              }
                           }
                        }
                        addr00bb:
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        break loop0;
                     }
                     §§push(int(Math.floor(Math.random() * _loc1_.length)));
                     if(_loc5_ || Boolean(this))
                     {
                        _loc2_ = §§pop();
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr00bf);
                  }
                  continue;
                  addr00c9:
               }
               §§goto(addr00b4);
            }
            §§goto(addr00c9);
            _loc3_ = _loc1_[_loc2_];
         }
         return _loc3_;
      }
      
      private function getEventUrbieList(param1:int) : Vector.<UrbieLifeConfigVo>
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Vector.<UrbieLifeConfigVo> = this.eventBatch;
         var _loc3_:Vector.<UrbieLifeConfigVo> = new Vector.<UrbieLifeConfigVo>();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(_loc2_[_loc4_].eventID == param1)
            {
               if(!_loc5_)
               {
                  _loc3_.push(_loc2_[_loc4_]);
                  if(!_loc6_)
                  {
                     continue;
                  }
               }
            }
            _loc4_++;
            if(_loc5_ && Boolean(this))
            {
               break;
            }
         }
         return _loc3_;
      }
      
      private function getEventCarList(param1:int) : Vector.<UrbieLifeConfigVo>
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Vector.<UrbieLifeConfigVo> = this.carBatch;
         var _loc3_:Vector.<UrbieLifeConfigVo> = new Vector.<UrbieLifeConfigVo>();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(_loc2_[_loc4_].eventID == param1)
            {
               if(_loc5_ || Boolean(param1))
               {
                  _loc3_.push(_loc2_[_loc4_]);
                  if(!(_loc5_ || Boolean(param1)))
                  {
                     break;
                  }
               }
            }
            _loc4_++;
            if(!_loc5_)
            {
               break;
            }
         }
         return _loc3_;
      }
      
      public function get loaded() : Boolean
      {
         return this._loaded;
      }
      
      public function get loading() : Boolean
      {
         return this._loading;
      }
      
      private function get flashVarsProxy() : FlashVarsProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this._flashVarsProxy);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     this._flashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
                  }
               }
               addr0055:
               return this._flashVarsProxy;
            }
         }
         §§goto(addr0055);
      }
      
      private function get fileRuntimeServiceProxy() : FileRuntimeLoadServiceProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._fileRuntimeServiceProxy);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     addr0032:
                     this._fileRuntimeServiceProxy = facade.retrieveProxy(FileRuntimeLoadServiceProxy.NAME) as FileRuntimeLoadServiceProxy;
                  }
               }
               return this._fileRuntimeServiceProxy;
            }
         }
         §§goto(addr0032);
      }
      
      private function get globalBlanceProxy() : GlobalBalanceProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this._globalBlanceProxy);
            if(_loc1_ || Boolean(this))
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     addr0042:
                     this._globalBlanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
                  }
               }
               return this._globalBlanceProxy;
            }
         }
         §§goto(addr0042);
      }
      
      private function setCitizenBatchByMood(param1:String, param2:Vector.<UrbieLifeConfigVo>) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = param1;
         if(!(_loc5_ && Boolean(param1)))
         {
            §§push(MOOD_SAD);
            if(_loc4_)
            {
               §§push(_loc3_);
               if(_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_)
                     {
                        addr009b:
                        §§push(0);
                        if(_loc5_ && Boolean(_loc3_))
                        {
                        }
                     }
                     else
                     {
                        addr00b7:
                        §§push(1);
                        if(_loc5_)
                        {
                        }
                     }
                     §§goto(addr00cf);
                  }
                  else
                  {
                     §§goto(addr00b3);
                  }
               }
               addr00b3:
               §§goto(addr00b2);
            }
            addr00b2:
            if(MOOD_HAPPY === _loc3_)
            {
               §§goto(addr00b7);
            }
            else
            {
               §§push(2);
            }
            addr00cf:
            switch(§§pop())
            {
               case 0:
                  this._citizenBatch_sad = param2;
                  if(_loc4_)
                  {
                  }
                  break;
               case 1:
                  this._citizenBatch_happy = param2;
                  if(_loc4_ || Boolean(param2))
                  {
                  }
                  break;
               default:
                  this._citizenBatch_normal = param2;
                  if(_loc4_)
                  {
                  }
            }
            return;
         }
         §§goto(addr009b);
      }
      
      private function getCitizenBatchByMood(param1:String) : Vector.<UrbieLifeConfigVo>
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1;
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(MOOD_SAD);
            if(!_loc3_)
            {
               §§push(_loc2_);
               if(!(_loc3_ && Boolean(this)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        addr008c:
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr00a0:
                        §§push(1);
                        if(_loc4_ || Boolean(this))
                        {
                        }
                     }
                     addr00c0:
                     switch(§§pop())
                     {
                        case 0:
                           return this._citizenBatch_sad;
                        case 1:
                           return this._citizenBatch_happy;
                        default:
                           return this._citizenBatch_normal;
                     }
                  }
                  else
                  {
                     addr009c:
                     addr009b:
                     if(MOOD_HAPPY === _loc2_)
                     {
                        §§goto(addr00a0);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr009c);
            }
            §§goto(addr009b);
         }
         §§goto(addr008c);
      }
      
      public function getBatchOfMood(param1:String) : Vector.<UrbieLifeConfigVo>
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:XMLList = null;
         if(_loc5_ || Boolean(this))
         {
            if(this.getCitizenBatchByMood(param1) == null)
            {
               addr0081:
               var _loc3_:* = param1;
               if(_loc5_)
               {
                  §§push(MOOD_SAD);
                  if(_loc5_ || Boolean(this))
                  {
                     §§push(_loc3_);
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc4_ && Boolean(_loc3_)))
                           {
                              §§push(0);
                              if(_loc4_ && Boolean(this))
                              {
                              }
                           }
                           else
                           {
                              addr0106:
                              §§push(1);
                              if(_loc5_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(MOOD_HAPPY);
                           if(_loc5_)
                           {
                              §§push(_loc3_);
                              if(!(_loc4_ && Boolean(_loc3_)))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       §§goto(addr0106);
                                    }
                                    else
                                    {
                                       addr0128:
                                       §§push(2);
                                       if(_loc5_)
                                       {
                                       }
                                    }
                                    §§goto(addr0140);
                                 }
                                 else
                                 {
                                    §§goto(addr0124);
                                 }
                              }
                              addr0124:
                              §§goto(addr0123);
                           }
                           addr0123:
                           if(MOOD_NEUTRAL === _loc3_)
                           {
                              §§goto(addr0128);
                           }
                           else
                           {
                              §§push(3);
                           }
                           §§goto(addr0140);
                        }
                        addr0140:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = this.xml..sad.citizen;
                              if(_loc5_)
                              {
                                 addr0153:
                                 this.setCitizenBatchByMood(param1,this.parseCitizenCombos(_loc2_));
                              }
                              break;
                           case 1:
                              _loc2_ = this.xml..happy.citizen;
                              §§goto(addr0153);
                           case 2:
                              _loc2_ = this.xml.neutral..citizen;
                              §§goto(addr0153);
                           default:
                              §§goto(addr0153);
                        }
                        §§goto(addr0160);
                     }
                     §§goto(addr0124);
                  }
                  §§goto(addr0123);
               }
               §§goto(addr0106);
            }
            addr0160:
            return this.getCitizenBatchByMood(param1);
         }
         §§goto(addr0081);
      }
      
      public function get eventBatch() : Vector.<UrbieLifeConfigVo>
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(!this._citizenBatch_event)
            {
               if(_loc1_)
               {
                  this._citizenBatch_event = this.parseCitizenCombos(this.xml..event.citizen);
               }
            }
         }
         return this._citizenBatch_event;
      }
      
      public function get playfieldObjectsCitizenBatch() : Vector.<UrbieLifeConfigVo>
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(!this._citizenBatch_playfieldObjects)
            {
               if(!_loc1_)
               {
                  addr0023:
                  this._citizenBatch_playfieldObjects = this.parseCitizenCombos(this.xml..playfieldObjectCitizens.citizen);
               }
            }
            return this._citizenBatch_playfieldObjects;
         }
         §§goto(addr0023);
      }
      
      public function get playfieldObjectsCarBatch() : Vector.<UrbieLifeConfigVo>
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(!this._carBatch_playfieldObjects)
            {
               if(_loc2_)
               {
                  addr0023:
                  this._carBatch_playfieldObjects = this.parseCitizenCombos(this.xml..playfieldObjectCars.citizen);
               }
            }
            return this._carBatch_playfieldObjects;
         }
         §§goto(addr0023);
      }
      
      private function parseCitizenCombos(param1:XMLList) : Vector.<UrbieLifeConfigVo>
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc3_:UrbieLifeConfigVo = null;
         var _loc4_:XML = null;
         var _loc5_:Vector.<String> = null;
         var _loc6_:XMLList = null;
         var _loc7_:* = 0;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc2_:Vector.<UrbieLifeConfigVo> = new Vector.<UrbieLifeConfigVo>();
         for each(_loc4_ in param1)
         {
            _loc5_ = this.availableGFXids;
            _loc6_ = _loc4_.textures.texture;
            if(_loc6_.length())
            {
               if(!_loc16_)
               {
                  continue;
               }
               §§push(1);
               if(_loc16_)
               {
                  _loc7_ = §§pop();
                  if(!_loc16_)
                  {
                     continue;
                  }
                  §§push(0);
               }
               var _loc12_:* = §§pop();
               if(_loc16_)
               {
                  for each(_loc8_ in _loc6_)
                  {
                     _loc3_ = new UrbieLifeConfigVo();
                     if(_loc16_)
                     {
                        _loc3_.id = _loc4_.@id.toString();
                        if(!_loc17_)
                        {
                           if(_loc4_.requires)
                           {
                              if(_loc16_)
                              {
                                 if(_loc4_.requires.building.length())
                                 {
                                    if(!(_loc17_ && Boolean(_loc3_)))
                                    {
                                       _loc3_.requiredBuilding = _loc4_.requires.building.@gfxID[0].toString();
                                       if(!_loc17_)
                                       {
                                          addr0124:
                                          _loc3_.animationClass = _loc4_.@animation.toString();
                                          if(!_loc17_)
                                          {
                                             _loc3_.lightingPath = _loc4_.light.image.text().toString();
                                             if(_loc16_ || Boolean(_loc3_))
                                             {
                                                addr0159:
                                                _loc3_.lightingData = _loc4_.light.data.text().toString();
                                                if(!_loc17_)
                                                {
                                                   _loc3_.sheetPath = _loc4_.sheet.image.text().toString();
                                                   if(!_loc17_)
                                                   {
                                                      _loc3_.sheetData = _loc4_.sheet.data.text().toString();
                                                      if(_loc16_)
                                                      {
                                                         §§push(_loc3_);
                                                         §§push(_loc4_.@spawnEnabled == "false");
                                                         if(_loc16_)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         §§pop().spawnEnabled = §§pop();
                                                         if(!(_loc17_ && Boolean(_loc3_)))
                                                         {
                                                            addr01c9:
                                                            §§push(_loc3_);
                                                            §§push(_loc4_.@unique == "false");
                                                            if(_loc16_)
                                                            {
                                                               §§push(!§§pop());
                                                            }
                                                            §§pop().unique = §§pop();
                                                            if(_loc16_)
                                                            {
                                                               addr01e3:
                                                               _loc3_.texturePath = _loc8_.text().toString();
                                                               if(_loc16_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  §§push(_loc7_);
                                                                  if(!_loc17_)
                                                                  {
                                                                     var _temp_5:* = §§pop();
                                                                     §§push(_temp_5);
                                                                     §§push(_temp_5);
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                  }
                                                                  §§pop().iteration = §§pop();
                                                                  if(!_loc17_)
                                                                  {
                                                                     var _loc14_:int = 0;
                                                                     if(!_loc17_)
                                                                     {
                                                                        for each(_loc9_ in _loc4_.animations.frameset)
                                                                        {
                                                                           if(_loc16_)
                                                                           {
                                                                              _loc3_.frameset[_loc9_.@id.toString()] = new FramesetVo(int(_loc9_.@start.toString()),int(_loc9_.@end.toString()),int(_loc9_.@playback.toString()));
                                                                           }
                                                                        }
                                                                     }
                                                                     if(!_loc17_)
                                                                     {
                                                                        _loc3_.fps = int(_loc4_.@fps.toString());
                                                                        if(_loc16_)
                                                                        {
                                                                           addr02a7:
                                                                           _loc3_.columns = int(_loc4_.@col.toString());
                                                                           if(_loc16_ || Boolean(_loc3_))
                                                                           {
                                                                              addr02c7:
                                                                              _loc3_.rows = int(_loc4_.@row.toString());
                                                                              if(_loc16_)
                                                                              {
                                                                                 addr02df:
                                                                                 _loc3_.offset = new Point(int(_loc4_.@offsetX.toString()),int(_loc4_.@offsetY.toString()));
                                                                                 if(!(_loc17_ && Boolean(this)))
                                                                                 {
                                                                                    addr0312:
                                                                                    _loc3_.terrain = _loc4_.@terrain.toString();
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr0331:
                                                                                    _loc3_.eventID = int(_loc4_.@eventID.toString());
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 _loc3_.pfoTagID = int(_loc4_.@pfoTagID.toString());
                                                                                 if(_loc16_ || Boolean(this))
                                                                                 {
                                                                                    addr036b:
                                                                                    _loc2_.push(_loc3_);
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr0312);
                                                                           }
                                                                           §§goto(addr0331);
                                                                        }
                                                                        §§goto(addr02c7);
                                                                     }
                                                                     §§goto(addr02df);
                                                                  }
                                                                  §§goto(addr02a7);
                                                               }
                                                               §§goto(addr02c7);
                                                            }
                                                            §§goto(addr036b);
                                                         }
                                                      }
                                                      §§goto(addr01e3);
                                                   }
                                                   §§goto(addr02df);
                                                }
                                             }
                                             §§goto(addr01e3);
                                          }
                                          §§goto(addr01c9);
                                       }
                                       §§goto(addr0331);
                                    }
                                    §§goto(addr01e3);
                                 }
                                 §§goto(addr0124);
                              }
                              §§goto(addr0159);
                           }
                           §§goto(addr0124);
                        }
                        §§goto(addr01e3);
                     }
                     §§goto(addr0124);
                  }
               }
               if(_loc16_ || Boolean(param1))
               {
                  continue;
               }
            }
            else if(!_loc4_.sheet.image.text())
            {
               continue;
            }
            _loc3_ = new UrbieLifeConfigVo();
            if(_loc16_)
            {
               if(_loc4_.requires)
               {
                  if(!_loc17_)
                  {
                     if(_loc4_.requires.building.length())
                     {
                        if(!_loc17_)
                        {
                           _loc3_.requiredBuilding = _loc4_.requires.building.@gfxID[0].toString();
                           if(!_loc16_)
                           {
                              continue;
                           }
                           addr03f1:
                           _loc3_.id = _loc4_.@id.toString();
                           if(_loc16_)
                           {
                              _loc3_.animationClass = _loc4_.@animation.toString();
                              if(!_loc17_)
                              {
                                 _loc3_.lightingPath = "";
                                 if(!(_loc17_ && Boolean(_loc3_)))
                                 {
                                    addr042a:
                                    _loc3_.lightingData = "";
                                    if(!_loc17_)
                                    {
                                       addr0436:
                                       _loc3_.sheetPath = _loc4_.sheet.image.text().toString();
                                       if(!(_loc17_ && Boolean(param1)))
                                       {
                                          _loc3_.sheetData = _loc4_.sheet.data.text().toString();
                                          if(!(_loc17_ && Boolean(_loc3_)))
                                          {
                                             addr047a:
                                             _loc3_.texturePath = "";
                                             if(!_loc17_)
                                             {
                                                addr0486:
                                                _loc3_.iteration = 0;
                                                if(_loc16_)
                                                {
                                                   §§push(_loc3_);
                                                   §§push(_loc4_.@spawnEnabled == "false");
                                                   if(!_loc17_)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   §§pop().spawnEnabled = §§pop();
                                                   if(!(_loc17_ && Boolean(this)))
                                                   {
                                                      §§push(_loc3_);
                                                      §§push(_loc4_.@unique == "false");
                                                      if(_loc16_)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                      §§pop().unique = §§pop();
                                                      if(_loc16_ || Boolean(_loc3_))
                                                      {
                                                         addr04d6:
                                                         _loc12_ = 0;
                                                         if(!(_loc17_ && Boolean(param1)))
                                                         {
                                                            for each(_loc9_ in _loc4_.animations.frameset)
                                                            {
                                                               if(!(_loc17_ && Boolean(_loc2_)))
                                                               {
                                                                  _loc3_.frameset[_loc9_.@id.toString()] = new FramesetVo(int(_loc9_.@start.toString()),int(_loc9_.@end.toString()),int(_loc9_.@playback.toString()));
                                                               }
                                                            }
                                                         }
                                                         if(!(_loc16_ || Boolean(_loc3_)))
                                                         {
                                                            continue;
                                                         }
                                                         _loc3_.fps = int(_loc4_.@fps.toString());
                                                         if(_loc16_ || Boolean(this))
                                                         {
                                                            addr058a:
                                                            _loc3_.columns = int(_loc4_.@col.toString());
                                                            if(!(_loc17_ && Boolean(_loc3_)))
                                                            {
                                                               addr05aa:
                                                               _loc3_.rows = int(_loc4_.@row.toString());
                                                               if(!(_loc17_ && Boolean(_loc2_)))
                                                               {
                                                                  addr05ca:
                                                                  _loc3_.offset = new Point(int(_loc4_.@offsetX.toString()),int(_loc4_.@offsetY.toString()));
                                                                  if(_loc16_)
                                                                  {
                                                                     addr05f5:
                                                                     _loc3_.terrain = _loc4_.@terrain.toString();
                                                                     if(_loc16_)
                                                                     {
                                                                        addr0608:
                                                                        _loc3_.eventID = int(_loc4_.@eventID.toString());
                                                                        if(!(_loc16_ || Boolean(_loc3_)))
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     addr0635:
                                                                     _loc3_.pfoTagID = int(_loc4_.@pfoTagID.toString());
                                                                     if(!(_loc16_ || Boolean(param1)))
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  _loc2_.push(_loc3_);
                                                                  continue;
                                                               }
                                                               §§goto(addr0635);
                                                            }
                                                            §§goto(addr05f5);
                                                         }
                                                         §§goto(addr05ca);
                                                      }
                                                      §§goto(addr05aa);
                                                   }
                                                   §§goto(addr0635);
                                                }
                                                §§goto(addr04d6);
                                             }
                                             §§goto(addr0635);
                                          }
                                          §§goto(addr0608);
                                       }
                                       §§goto(addr047a);
                                    }
                                    §§goto(addr05f5);
                                 }
                                 §§goto(addr058a);
                              }
                              §§goto(addr0608);
                           }
                           §§goto(addr042a);
                        }
                        §§goto(addr0436);
                     }
                     §§goto(addr03f1);
                  }
                  §§goto(addr058a);
               }
               §§goto(addr03f1);
            }
            §§goto(addr0486);
         }
         return _loc2_;
      }
   }
}

