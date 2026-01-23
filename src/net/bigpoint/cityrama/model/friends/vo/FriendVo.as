package net.bigpoint.cityrama.model.friends.vo
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.ApplicationFacade;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   
   public class FriendVo
   {
      
      public static const NO_FRIEND:Number = -1;
      
      public static const SPECIAL_ITEM:Number = 0;
      
      public static const PENDING:Number = 2;
      
      public static const FINISHED:Number = 3;
      
      public static const SPECIAL_FRIEND_LIST:uint = 1;
      
      public static const SPECIAL_DELIVERY:uint = 2;
      
      public static const INVISIBLE:uint = 4;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NO_FRIEND = -1;
         if(!(_loc2_ && _loc1_))
         {
            addr0032:
            SPECIAL_ITEM = 0;
            if(!(_loc2_ && _loc1_))
            {
               PENDING = 2;
               if(!(_loc2_ && FriendVo))
               {
                  FINISHED = 3;
                  if(!_loc2_)
                  {
                     SPECIAL_FRIEND_LIST = 1;
                     if(_loc1_ || _loc2_)
                     {
                        addr0094:
                        SPECIAL_DELIVERY = 2;
                        if(!(_loc2_ && _loc1_))
                        {
                           addr00ab:
                           INVISIBLE = 4;
                        }
                     }
                     return;
                  }
               }
               §§goto(addr0094);
            }
         }
         §§goto(addr00ab);
      }
      §§goto(addr0032);
      
      public var avatar:int;
      
      public var fId:int;
      
      public var lvl:int;
      
      public var name:String;
      
      public var status:Number;
      
      public var isPlayer:Boolean = true;
      
      public var layerPosition:Point;
      
      public var inPlayer:Boolean;
      
      public var isMe:Boolean = false;
      
      public var specialType:uint;
      
      public var ibm:Boolean;
      
      private var _isOnline:Boolean;
      
      private var _lastLoginDate:Number;
      
      private var _accountCreatedDate:Number = 0;
      
      private var _isEmpty:Boolean;
      
      private var _isItemNew:Boolean;
      
      public function FriendVo(param1:Object, param2:uint = 0)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super();
            if(_loc4_)
            {
               this.fId = param1["id"];
               if(!_loc3_)
               {
                  this.lvl = param1["l"];
                  if(_loc4_ || Boolean(this))
                  {
                     this.name = param1["n"];
                     if(!(_loc3_ && _loc3_))
                     {
                        this.specialType = this.specialType;
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(this);
                           if(_loc4_ || Boolean(param1))
                           {
                              §§push(param1["ibm"] == "1");
                              if(_loc4_ || Boolean(param1))
                              {
                                 if(§§pop())
                                 {
                                    addr00a2:
                                    §§push(true);
                                    if(_loc4_ || Boolean(this))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(false);
                                 }
                              }
                              §§pop().ibm = §§pop();
                              if(!_loc3_)
                              {
                                 §§goto(addr00cc);
                              }
                              §§goto(addr013b);
                           }
                           §§goto(addr00a2);
                        }
                        addr00cc:
                        this.status = parseInt(param1["t"]);
                        if(_loc4_ || _loc3_)
                        {
                           addr00ec:
                           §§push(this);
                           if(!_loc3_)
                           {
                              §§push(param1["io"] == "1");
                              if(_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    addr0107:
                                    §§push(true);
                                    if(_loc3_ && Boolean(param2))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(false);
                                 }
                              }
                              §§pop()._isOnline = §§pop();
                              if(_loc4_ || Boolean(param2))
                              {
                                 addr012b:
                                 this._lastLoginDate = param1["lld"];
                                 if(!_loc3_)
                                 {
                                    addr013b:
                                    this._accountCreatedDate = param1["cd"] as Number;
                                    if(!_loc3_)
                                    {
                                       if(param1["avatar"])
                                       {
                                          if(!_loc3_)
                                          {
                                             this.avatar = parseInt(param1["avatar"]);
                                             addr015e:
                                             if(_loc4_)
                                             {
                                             }
                                          }
                                       }
                                       else if(this.status == FriendVo.NO_FRIEND)
                                       {
                                          if(_loc4_)
                                          {
                                             addr019a:
                                             this.avatar = 0;
                                             if(_loc3_)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          this.avatar = 1;
                                       }
                                       §§goto(addr01af);
                                    }
                                 }
                                 §§goto(addr015e);
                              }
                              §§goto(addr019a);
                           }
                           §§goto(addr0107);
                        }
                        §§goto(addr01af);
                     }
                     §§goto(addr012b);
                  }
                  §§goto(addr00ec);
               }
            }
            addr01af:
            return;
         }
         §§goto(addr00cc);
      }
      
      public function get thumbnail() : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CvTagProxy = ApplicationFacade.getInstance().retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
         §§push(_loc1_);
         §§push("images#avatar#");
         if(_loc3_)
         {
            §§push(§§pop() + this.avatar);
            if(_loc3_ || Boolean(this))
            {
               addr0052:
               §§push(§§pop() + "?png");
            }
            return §§pop().getCvTagPath(§§pop());
         }
         §§goto(addr0052);
      }
      
      public function get isOnline() : Boolean
      {
         return this._isOnline;
      }
      
      public function set isOnline(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._isOnline = param1;
         }
      }
      
      public function get lastLoginDate() : Number
      {
         return this._lastLoginDate;
      }
      
      public function set lastLoginDate(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._lastLoginDate = param1;
         }
      }
      
      public function get accountCreatedDate() : Number
      {
         return this._accountCreatedDate;
      }
      
      public function set accountCreatedDate(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._accountCreatedDate = param1;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this._isEmpty;
      }
      
      public function set isEmpty(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._isEmpty = param1;
         }
      }
      
      public function get isItemNew() : Boolean
      {
         return this._isItemNew;
      }
      
      public function set isItemNew(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || param1)
         {
            this._isItemNew = param1;
         }
      }
   }
}

