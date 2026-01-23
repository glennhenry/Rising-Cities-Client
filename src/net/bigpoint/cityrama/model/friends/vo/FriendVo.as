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
         super();
         this.fId = param1["id"];
         this.lvl = param1["l"];
         this.name = param1["n"];
         this.specialType = this.specialType;
         this.ibm = param1["ibm"] == "1" ? true : false;
         this.status = parseInt(param1["t"]);
         this._isOnline = param1["io"] == "1" ? true : false;
         this._lastLoginDate = param1["lld"];
         this._accountCreatedDate = param1["cd"] as Number;
         if(param1["avatar"])
         {
            this.avatar = parseInt(param1["avatar"]);
         }
         else if(this.status == FriendVo.NO_FRIEND)
         {
            this.avatar = 0;
         }
         else
         {
            this.avatar = 1;
         }
      }
      
      public function get thumbnail() : String
      {
         var _loc1_:CvTagProxy = ApplicationFacade.getInstance().retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
         return _loc1_.getCvTagPath("images#avatar#" + this.avatar + "?png");
      }
      
      public function get isOnline() : Boolean
      {
         return this._isOnline;
      }
      
      public function set isOnline(param1:Boolean) : void
      {
         this._isOnline = param1;
      }
      
      public function get lastLoginDate() : Number
      {
         return this._lastLoginDate;
      }
      
      public function set lastLoginDate(param1:Number) : void
      {
         this._lastLoginDate = param1;
      }
      
      public function get accountCreatedDate() : Number
      {
         return this._accountCreatedDate;
      }
      
      public function set accountCreatedDate(param1:Number) : void
      {
         this._accountCreatedDate = param1;
      }
      
      public function get isEmpty() : Boolean
      {
         return this._isEmpty;
      }
      
      public function set isEmpty(param1:Boolean) : void
      {
         this._isEmpty = param1;
      }
      
      public function get isItemNew() : Boolean
      {
         return this._isItemNew;
      }
      
      public function set isItemNew(param1:Boolean) : void
      {
         this._isItemNew = param1;
      }
   }
}

