package net.bigpoint.cityrama.model.quest.vo
{
   import net.bigpoint.cityrama.model.quest.vo.interfaces.IQuestTaskVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   
   public class QuestVirtualTaskVo implements IQuestTaskVo
   {
      
      private var _flavourText:String;
      
      private var _gfxId:int;
      
      private var _isCompleted:Boolean;
      
      private var _headerText:String;
      
      private var _followingTaskLocaleId:String;
      
      private var _localeId:String;
      
      private var _notificationInterest:Vector.<String>;
      
      private var _notificationCancelInterest:Vector.<String>;
      
      private var _targetItemGfxId:Number;
      
      private var _previousTaskId:String;
      
      private var _isActive:Boolean;
      
      public function QuestVirtualTaskVo()
      {
         super();
      }
      
      public function get flavourText() : String
      {
         return this._flavourText;
      }
      
      public function set flavourText(param1:String) : void
      {
         this._flavourText = param1;
      }
      
      public function set headerText(param1:String) : void
      {
         this._headerText = param1;
      }
      
      public function get headerText() : String
      {
         return this._headerText;
      }
      
      public function set isCompleted(param1:Boolean) : void
      {
         this._isCompleted = param1;
      }
      
      public function get isCompleted() : Boolean
      {
         return this._isCompleted;
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function set gfxId(param1:int) : void
      {
         this._gfxId = param1;
      }
      
      public function get followingTaskLocaleId() : String
      {
         return this._followingTaskLocaleId;
      }
      
      public function set followingTaskLocaleId(param1:String) : void
      {
         this._followingTaskLocaleId = param1;
      }
      
      public function set taskDTO(param1:QuestTaskDTO) : void
      {
      }
      
      public function get isActive() : Boolean
      {
         return this._isActive;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         this._isActive = param1;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function set localeId(param1:String) : void
      {
         this._localeId = param1;
      }
      
      public function set notificationInterest(param1:Vector.<String>) : void
      {
         this._notificationInterest = param1;
      }
      
      public function get notificationInterest() : Vector.<String>
      {
         return this._notificationInterest;
      }
      
      public function get notificationCancelInterest() : Vector.<String>
      {
         return this._notificationCancelInterest;
      }
      
      public function set notificationCancelInterest(param1:Vector.<String>) : void
      {
         this._notificationCancelInterest = param1;
      }
      
      public function set targetItemGfxId(param1:Number) : void
      {
         this._targetItemGfxId = param1;
      }
      
      public function get targetItemGfxId() : Number
      {
         return this._targetItemGfxId;
      }
      
      public function get previousTaskId() : String
      {
         return this._previousTaskId;
      }
      
      public function set previousTaskId(param1:String) : void
      {
         this._previousTaskId = param1;
      }
   }
}

