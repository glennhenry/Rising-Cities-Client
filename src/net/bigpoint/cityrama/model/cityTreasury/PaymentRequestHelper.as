package net.bigpoint.cityrama.model.cityTreasury
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.ExternalPaymentPackInfoVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackUpsellingDTO;
   
   public class PaymentRequestHelper extends EventDispatcher
   {
      
      private var _paymentDictionary:Dictionary;
      
      private var _packs:Vector.<ConfigPaymentPackDTO>;
      
      private var _upsell:Vector.<ConfigPaymentPackUpsellingDTO>;
      
      public function PaymentRequestHelper()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(!_loc2_)
            {
               addr0025:
               this._paymentDictionary = new Dictionary();
            }
            return;
         }
         §§goto(addr0025);
      }
      
      public function get paymentDictionary() : Dictionary
      {
         return this._paymentDictionary;
      }
      
      public function requestPacksFromPayment(param1:Vector.<ConfigPaymentPackDTO>, param2:String, param3:String) : void
      {
         var $packs:Vector.<ConfigPaymentPackDTO>;
         var $category:String;
         var $paymentURL:String;
         var paymentRequestString:String;
         var pack:ConfigPaymentPackDTO;
         var urlLoader:URLLoader;
         var request:URLRequest;
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc8_ || Boolean(this))
         {
            §§push(null);
            if(!_loc7_)
            {
               §§pop().§§slot[5] = §§pop();
               if(_loc8_ || Boolean(param3))
               {
                  §§push(§§newactivation());
                  if(!(_loc7_ && Boolean(param1)))
                  {
                     §§push(null);
                     if(!(_loc7_ && Boolean(param2)))
                     {
                        addr0065:
                        §§pop().§§slot[6] = §§pop();
                        if(_loc8_ || Boolean(param3))
                        {
                           §§push(§§newactivation());
                           if(_loc8_)
                           {
                              addr0081:
                              §§pop().§§slot[7] = null;
                              if(_loc8_ || Boolean(param3))
                              {
                                 §§push(§§newactivation());
                                 if(_loc8_)
                                 {
                                    §§pop().§§slot[1] = param1;
                                    if(!_loc7_)
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc7_)
                                       {
                                          addr00ad:
                                          §§push(param2);
                                          if(!_loc7_)
                                          {
                                             §§pop().§§slot[2] = §§pop();
                                             if(_loc8_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc8_ || Boolean(param2))
                                                {
                                                   addr00cc:
                                                   §§push(param3);
                                                   if(_loc8_ || Boolean(param1))
                                                   {
                                                      addr00db:
                                                      §§pop().§§slot[3] = §§pop();
                                                      if(_loc8_)
                                                      {
                                                         addr00e3:
                                                         this._packs = $packs;
                                                         if(_loc8_)
                                                         {
                                                            addr00f1:
                                                            addr0115:
                                                            addr00f3:
                                                            §§push(§§newactivation());
                                                            §§push($paymentURL);
                                                            if(_loc8_ || Boolean(this))
                                                            {
                                                               §§push(§§pop() + "&");
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§pop() + $category);
                                                               }
                                                               §§push(§§pop());
                                                            }
                                                            §§pop().§§slot[4] = §§pop();
                                                         }
                                                         addr0117:
                                                         var _loc5_:int = 0;
                                                         var _loc6_:* = this._packs;
                                                         while(§§hasnext(_loc6_,_loc5_))
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!_loc7_)
                                                            {
                                                               §§pop().§§slot[5] = §§nextvalue(_loc5_,_loc6_);
                                                               if(_loc7_ && Boolean(param3))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§newactivation());
                                                            }
                                                            §§push(paymentRequestString);
                                                            if(_loc8_)
                                                            {
                                                               §§push("&item[]=");
                                                               if(!(_loc7_ && Boolean(this)))
                                                               {
                                                                  §§push(§§pop() + pack.key);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().§§slot[4] = §§pop();
                                                         }
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!(_loc7_ && Boolean(param1)))
                                                            {
                                                               §§pop().§§slot[4] = paymentRequestString + "&price";
                                                               if(!(_loc7_ && Boolean(this)))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§pop().§§slot[6] = new URLLoader();
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr01d1:
                                                                        §§push(§§newactivation());
                                                                        if(_loc8_)
                                                                        {
                                                                           §§pop().§§slot[7] = new URLRequest(paymentRequestString);
                                                                           if(_loc8_ || Boolean(param1))
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc7_ && Boolean(param1)))
                                                                              {
                                                                                 addr0207:
                                                                                 §§pop().§§slot[7].method = URLRequestMethod.GET;
                                                                                 if(_loc8_ || Boolean(param2))
                                                                                 {
                                                                                    addr0220:
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr0228:
                                                                                       §§pop().§§slot[6].addEventListener(Event.COMPLETE,this.handlePaymentResponse);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr023c:
                                                                                          §§push(§§newactivation());
                                                                                          if(!(_loc7_ && Boolean(this)))
                                                                                          {
                                                                                             §§goto(addr024c);
                                                                                          }
                                                                                          §§goto(addr0263);
                                                                                       }
                                                                                       §§goto(addr0261);
                                                                                    }
                                                                                    §§goto(addr0263);
                                                                                 }
                                                                                 §§goto(addr023c);
                                                                              }
                                                                              §§goto(addr0263);
                                                                           }
                                                                           §§goto(addr0220);
                                                                        }
                                                                        §§goto(addr0228);
                                                                     }
                                                                     §§goto(addr023c);
                                                                  }
                                                                  addr024c:
                                                                  §§pop().§§slot[6].addEventListener(IOErrorEvent.IO_ERROR,this.onPHPiOError);
                                                                  if(!_loc7_)
                                                                  {
                                                                     try
                                                                     {
                                                                        addr0263:
                                                                        urlLoader.load(request);
                                                                        addr0261:
                                                                     }
                                                                     catch(e:Error)
                                                                     {
                                                                        if(!(_loc7_ && Boolean(param1)))
                                                                        {
                                                                           handlePHPError(urlLoader);
                                                                        }
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr0220);
                                                            }
                                                            §§goto(addr0207);
                                                         }
                                                         §§goto(addr01d1);
                                                      }
                                                      §§goto(addr00f1);
                                                   }
                                                   §§goto(addr0115);
                                                }
                                                §§goto(addr00f3);
                                             }
                                             §§goto(addr0117);
                                          }
                                          §§goto(addr00db);
                                       }
                                       §§goto(addr00f3);
                                    }
                                    §§goto(addr00e3);
                                 }
                                 §§goto(addr00cc);
                              }
                              §§goto(addr00e3);
                           }
                           §§goto(addr00f3);
                        }
                        §§goto(addr0117);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr00f1);
            }
            §§goto(addr0065);
         }
         §§goto(addr00ad);
      }
      
      public function requestUpsellPacksFromPayment(param1:Vector.<ConfigPaymentPackUpsellingDTO>, param2:String, param3:String) : void
      {
         var $packs:Vector.<ConfigPaymentPackUpsellingDTO>;
         var $category:String;
         var $paymentURL:String;
         var paymentRequestString:String;
         var pack:ConfigPaymentPackUpsellingDTO;
         var urlLoader:URLLoader;
         var request:URLRequest;
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc8_ || Boolean(param2))
         {
            §§push(null);
            if(!(_loc7_ && Boolean(this)))
            {
               §§pop().§§slot[5] = §§pop();
               if(_loc8_)
               {
                  §§push(§§newactivation());
                  if(!_loc7_)
                  {
                     §§push(null);
                     if(_loc8_)
                     {
                        addr0054:
                        §§pop().§§slot[6] = §§pop();
                        if(!(_loc7_ && Boolean(param1)))
                        {
                           §§push(§§newactivation());
                           if(_loc8_)
                           {
                              addr0070:
                              §§pop().§§slot[7] = null;
                              if(!_loc7_)
                              {
                                 §§push(§§newactivation());
                                 if(_loc8_)
                                 {
                                    §§pop().§§slot[1] = param1;
                                    if(_loc8_ || Boolean(param2))
                                    {
                                       addr0094:
                                       §§push(§§newactivation());
                                       if(_loc8_ || Boolean(param2))
                                       {
                                          addr00a4:
                                          §§push(param2);
                                          if(_loc8_ || Boolean(this))
                                          {
                                             §§pop().§§slot[2] = §§pop();
                                             if(!(_loc7_ && Boolean(param2)))
                                             {
                                                §§push(§§newactivation());
                                                if(_loc8_ || Boolean(param3))
                                                {
                                                   addr00d3:
                                                   §§push(param3);
                                                   if(_loc8_)
                                                   {
                                                      addr00da:
                                                      §§pop().§§slot[3] = §§pop();
                                                      if(!_loc7_)
                                                      {
                                                         addr00e2:
                                                         this._upsell = $packs;
                                                         if(!_loc7_)
                                                         {
                                                            addr00f2:
                                                            addr00f0:
                                                            §§push(§§newactivation());
                                                            §§push($paymentURL);
                                                            if(!(_loc7_ && Boolean(param1)))
                                                            {
                                                               addr0104:
                                                               §§push(§§pop() + "&");
                                                               if(_loc8_)
                                                               {
                                                                  §§push(§§pop() + $category);
                                                               }
                                                               §§push(§§pop());
                                                            }
                                                            §§pop().§§slot[4] = §§pop();
                                                         }
                                                      }
                                                      addr0116:
                                                      var _loc5_:int = 0;
                                                      var _loc6_:* = this._upsell;
                                                      while(§§hasnext(_loc6_,_loc5_))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc7_ && Boolean(param1)))
                                                         {
                                                            §§pop().§§slot[5] = §§nextvalue(_loc5_,_loc6_);
                                                            if(!_loc8_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(§§newactivation());
                                                         }
                                                         §§push(paymentRequestString);
                                                         if(_loc8_ || Boolean(param2))
                                                         {
                                                            §§push("&item[]=");
                                                            if(_loc8_)
                                                            {
                                                               §§push(§§pop() + pack.key);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop().§§slot[4] = §§pop();
                                                      }
                                                      if(!(_loc7_ && Boolean(param1)))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc8_)
                                                         {
                                                            §§pop().§§slot[4] = paymentRequestString + "&price";
                                                            if(!(_loc7_ && Boolean(this)))
                                                            {
                                                               addr01b5:
                                                               §§push(§§newactivation());
                                                               if(!(_loc7_ && Boolean(param2)))
                                                               {
                                                                  §§pop().§§slot[6] = new URLLoader();
                                                                  if(!(_loc7_ && Boolean(param2)))
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc8_ || Boolean(param3))
                                                                     {
                                                                        §§pop().§§slot[7] = new URLRequest(paymentRequestString);
                                                                        if(!(_loc7_ && Boolean(param3)))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc8_ || Boolean(this))
                                                                           {
                                                                              §§pop().§§slot[7].method = URLRequestMethod.GET;
                                                                              if(!(_loc7_ && Boolean(param1)))
                                                                              {
                                                                                 addr0236:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§pop().§§slot[6].addEventListener(Event.COMPLETE,this.handlePaymentResponse);
                                                                                    if(_loc8_ || Boolean(param1))
                                                                                    {
                                                                                       addr025a:
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc8_ || Boolean(param2))
                                                                                       {
                                                                                          addr026a:
                                                                                          §§pop().§§slot[6].addEventListener(IOErrorEvent.IO_ERROR,this.onPHPiOError);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             try
                                                                                             {
                                                                                                urlLoader.load(request);
                                                                                                addr0281:
                                                                                             }
                                                                                             catch(e:Error)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   handlePHPError(urlLoader);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr02c1);
                                                                                       }
                                                                                       §§goto(addr0281);
                                                                                    }
                                                                                    §§goto(addr02c1);
                                                                                 }
                                                                                 §§goto(addr026a);
                                                                              }
                                                                              addr02c1:
                                                                              return;
                                                                           }
                                                                           §§goto(addr026a);
                                                                        }
                                                                        §§goto(addr0236);
                                                                     }
                                                                     §§goto(addr0281);
                                                                  }
                                                                  §§goto(addr025a);
                                                               }
                                                               §§goto(addr0281);
                                                            }
                                                            §§goto(addr0236);
                                                         }
                                                         §§goto(addr0281);
                                                      }
                                                      §§goto(addr01b5);
                                                   }
                                                   §§goto(addr0104);
                                                }
                                                §§goto(addr00f2);
                                             }
                                             §§goto(addr0116);
                                          }
                                          §§goto(addr00da);
                                       }
                                       §§goto(addr00d3);
                                    }
                                    §§goto(addr00e2);
                                 }
                                 §§goto(addr00f2);
                              }
                              §§goto(addr00f0);
                           }
                           §§goto(addr00f2);
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr0094);
            }
            §§goto(addr0054);
         }
         §§goto(addr00f2);
      }
      
      private function handlePaymentResponse(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:URLLoader = null;
         var _loc3_:Object = null;
         if(!_loc5_)
         {
            if(param1.target is URLLoader)
            {
               addr002f:
               _loc2_ = param1.target as URLLoader;
               if(!_loc5_)
               {
                  _loc2_.removeEventListener(Event.COMPLETE,this.handlePaymentResponse);
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onPHPiOError);
                     addr0066:
                     if(_loc4_ || Boolean(param1))
                     {
                        §§goto(addr008f);
                     }
                     §§goto(addr0096);
                  }
                  addr008f:
                  if(_loc2_.data)
                  {
                     addr0096:
                     _loc3_ = JSON.parse(_loc2_.data);
                     if(!_loc5_)
                     {
                        this.fillPaymentDictionary(_loc3_);
                     }
                  }
                  §§goto(addr00af);
               }
               §§goto(addr0066);
            }
            addr00af:
            return;
         }
         §§goto(addr002f);
      }
      
      private function onPHPiOError(param1:IOErrorEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1.target is URLLoader)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.handlePHPError(param1.target as URLLoader);
               }
            }
         }
      }
      
      private function handlePHPError(param1:URLLoader) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onPHPiOError);
            if(_loc3_ || Boolean(this))
            {
               param1.removeEventListener(Event.COMPLETE,this.handlePaymentResponse);
               if(_loc3_)
               {
                  this.fillPaymentDictionary();
               }
            }
         }
      }
      
      private function fillPaymentDictionary(param1:Object = null) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc2_:ExternalPaymentPackInfoVo = null;
         var _loc3_:ConfigPaymentPackDTO = null;
         var _loc4_:Object = null;
         var _loc5_:ConfigPaymentPackUpsellingDTO = null;
         var _loc6_:Object = null;
         if(_loc11_)
         {
            this._paymentDictionary = new Dictionary();
            if(!(_loc12_ && Boolean(param1)))
            {
               if(!param1)
               {
                  if(!_loc12_)
                  {
                     addr0057:
                     param1 = new Object();
                     if(_loc11_ || Boolean(this))
                     {
                        param1.items = new Array();
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr007f);
               }
               addr0077:
               if(this._packs)
               {
                  addr007f:
                  var _loc7_:int = 0;
                  var _loc8_:* = this._packs;
                  loop2:
                  while(true)
                  {
                     §§push(§§hasnext(_loc8_,_loc7_));
                     if(_loc12_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        _loc3_ = §§nextvalue(_loc7_,_loc8_);
                        _loc2_ = new ExternalPaymentPackInfoVo();
                        if(_loc11_)
                        {
                           _loc2_.packConfigId = _loc3_.id;
                        }
                        for each(_loc4_ in param1.items)
                        {
                           §§push(_loc4_.type == _loc3_.key);
                           if(!(_loc12_ && Boolean(_loc2_)))
                           {
                              var _temp_7:* = §§pop();
                              §§push(_temp_7);
                              if(!_temp_7)
                              {
                                 if(_loc11_ || Boolean(_loc2_))
                                 {
                                    §§pop();
                                    if(_loc11_ || Boolean(param1))
                                    {
                                       addr012d:
                                       §§push(_loc4_.type + "_");
                                       if(!(_loc12_ && Boolean(param1)))
                                       {
                                          §§push(§§pop() + int(_loc4_.amount));
                                       }
                                       if(§§pop() != _loc3_.key)
                                       {
                                          continue;
                                       }
                                       if(!(_loc12_ && Boolean(this)))
                                       {
                                          _loc2_.currency = _loc4_.priceCurrency;
                                          if(!_loc12_)
                                          {
                                             addr015c:
                                             _loc2_.price = _loc4_.price;
                                             if(!(_loc11_ || Boolean(this)))
                                             {
                                                break;
                                             }
                                          }
                                          addr0174:
                                          _loc2_.amount = Number(_loc4_.amount);
                                          break;
                                       }
                                       §§goto(addr015c);
                                    }
                                    §§goto(addr0174);
                                 }
                              }
                           }
                           §§goto(addr012d);
                        }
                        if(_loc11_ || Boolean(_loc2_))
                        {
                           this._paymentDictionary[_loc2_.packConfigId] = _loc2_;
                        }
                        continue;
                     }
                     if(!_loc12_)
                     {
                        if(_loc11_)
                        {
                           if(!(_loc11_ || Boolean(_loc2_)))
                           {
                              addr01f2:
                              _loc7_ = 0;
                              if(_loc11_ || Boolean(param1))
                              {
                                 addr0204:
                                 _loc8_ = this._upsell;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc8_,_loc7_));
                                    break loop2;
                                 }
                                 addr02e7:
                                 addr02e0:
                              }
                           }
                           §§goto(addr02eb);
                        }
                        §§goto(addr0204);
                     }
                     §§goto(addr02e7);
                  }
                  while(§§pop())
                  {
                     _loc5_ = §§nextvalue(_loc7_,_loc8_);
                     _loc2_ = new ExternalPaymentPackInfoVo();
                     if(_loc11_ || Boolean(this))
                     {
                        _loc2_.packConfigId = _loc5_.id;
                     }
                     for each(_loc6_ in param1.items)
                     {
                        if(_loc6_.type == _loc5_.key)
                        {
                           if(_loc11_ || Boolean(_loc2_))
                           {
                              _loc2_.currency = _loc6_.priceCurrency;
                              if(_loc12_)
                              {
                                 break;
                              }
                              _loc2_.price = _loc6_.price;
                              if(_loc12_ && Boolean(this))
                              {
                                 break;
                              }
                           }
                           _loc2_.amount = Number(_loc6_.amount);
                           break;
                        }
                     }
                     if(_loc11_ || Boolean(_loc3_))
                     {
                        this._paymentDictionary[_loc5_.key] = _loc2_;
                     }
                     §§goto(addr02e0);
                  }
                  §§goto(addr02e7);
               }
               else if(this._upsell)
               {
                  if(_loc11_ || Boolean(param1))
                  {
                     §§goto(addr01f2);
                  }
               }
               addr02eb:
               return;
            }
            §§goto(addr007f);
         }
         §§goto(addr0057);
      }
   }
}

