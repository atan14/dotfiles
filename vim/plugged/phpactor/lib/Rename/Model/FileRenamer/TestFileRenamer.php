<?php

namespace Phpactor\Rename\Model\FileRenamer;

use Amp\Failure;
use Amp\Promise;
use Amp\Success;
use Phpactor\Rename\Model\Exception\CouldNotRename;
use Phpactor\Rename\Model\FileRenamer;
use Phpactor\Rename\Model\LocatedTextEditsMap;
use Phpactor\TextDocument\TextDocumentUri;

class TestFileRenamer implements FileRenamer
{
    private bool $throw;

    private LocatedTextEditsMap $workspaceEdits;

    public function __construct(bool $throw = false, ?LocatedTextEditsMap $workspaceEdits = null)
    {
        $this->throw = $throw;
        $this->workspaceEdits = $workspaceEdits ?: LocatedTextEditsMap::create();
    }

    public function renameFile(TextDocumentUri $from, TextDocumentUri $to): Promise
    {
        if ($this->throw) {
            return new Failure(new CouldNotRename('There was a problem'));
        }
        return new Success($this->workspaceEdits);
    }
}
